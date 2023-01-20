tools/openqadev:
	podman build -t tools/openqadev -f Dockerfile.openqa .

run-openqadev:
	toolbox -u -i tools/openqadev -P -t openqadev
