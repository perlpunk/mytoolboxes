tools/openqadev:
	podman build -t tools/openqadev -f Dockerfile.openqa .
tools/openqadevtw:
	podman build -t tools/openqadevtw -f Dockerfile.openqa.tw .

my/chrome:
	podman build -t chrome -f Dockerfile.chrome .

my/oscqam:
	podman build -t oscqam -f Dockerfile.osc .

run-openqadev:
	toolbox -u -i tools/openqadev -P -t openqadev
