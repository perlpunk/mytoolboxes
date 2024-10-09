tools/openqadev:
	podman build -t tools/openqadev -f Dockerfile.openqa .
tools/openqadevtw:
	podman build -t tools/openqadevtw -f Dockerfile.openqa.tw .

my/chrome:
	podman build -t chrome -f Dockerfile.chrome .

my/oscqam:
	podman build -t oscqam -f Dockerfile.osc .

run-openqadev: tools/openqadev
	toolbox -u -i tools/openqadev -P -t openqadev

my/perldev:
	podman build -t my/perldev -f Dockerfile.perldev .

run-perldev: my/perldev
	toolbox -u -i my/perldev -P -t perldev

my/blog:
	podman build -t my/blog -f Dockerfile.blog .
