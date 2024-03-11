#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/wait.h>


//funcion que controla el hilo
void *thread_func(void *arg) {
  printf("Hilo Ejecutandose!\n");
  return NULL;
}

int main() {
  pid_t pid;

  pid = fork();
  // Si es un proceso hijo
  if (pid == 0) {
    printf("Proceso hijo (PID: %d)\n", getpid());

    pthread_t thread;
    pthread_create(&thread, NULL, thread_func, NULL);
    pthread_join(thread, NULL);

    exit(0);
  } else if (pid > 0) {
    // Es un proceso padre
    printf("Proceso padre (PID: %d)\n", getpid());

    pid = fork();
    if (pid == 0) {
      // Es el segundo proceso hijo
      printf("Segundo proceso hijo (PID: %d)\n", getpid());
      exit(0);
    } else if (pid > 0) {
      // Esperar a que terminen los procesos hijos
      int status;
      while (waitpid(-1, &status, WNOHANG) > 0);
      printf("Procesos hijos finalizados\n");
    } else {
      perror("Error al crear proceso 2");
      exit(1);
    }
  } else {
    perror("Error al crear el proceso 1");
    exit(1);
  }

  return 0;
}