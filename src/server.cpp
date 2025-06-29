#include <stdio.h>
#include <sys/socket.h>

int main(int argc, char *argv[]) {
  // fd = socket()
  // bind(fd, address)
  // listen(fd)
  // while True:
  //   conn_fd = accept(fd)
  //   do_something_with(conn_fd)
  //   close(conn_fd)
  int fd = socket(AF_INET, SOCK_STREAM, 0);
  return 0;
}
