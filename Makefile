dist:
	python setup.py sdist
	python setup.py bdist_wheel
	ls -l dist

install:
	pip install .

develop:
	pip install -e .

reinstall:
	pip uninstall -y simple_data_collector
	rm -fr build dist simple_data_collector.egg-info
	python setup.py bdist_wheel
	pip install dist/*




test:
	python -m pytest -x -p no:warnings -rfEX tests/ 
	python -m pytest -x -p no:warnings -rfEX tests/_test_local.py