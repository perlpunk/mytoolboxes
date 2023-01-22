tools/openqadev:
	podman build -t tools/openqadev -f Dockerfile.openqa .

my/chrome:
	podman build -t chrome -f Dockerfile.chrome .

run-openqadev:
	toolbox -u -i tools/openqadev -P -t openqadev
