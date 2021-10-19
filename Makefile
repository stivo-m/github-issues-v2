.PHONY: generate
generate:
	flutter pub run build_runner build --delete-conflicting-outputs


.PHONY: sort
sort:
	flutter pub run import_sorter:main

.PHONY: test
test:
	rm -rf coverage* && \
	flutter analyze && flutter test --coverage test/ && \
	lcov --remove coverage/lcov.info 'lib/**/*.g.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.freezed.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.gr.dart' -o coverage/lcov.info && \
	lcov --remove coverage/lcov.info 'lib/infrastructure/repository/sqlite.dart' -o coverage/lcov.info && \
	lcov --remove coverage/lcov.info 'lib/application/core/services/connectivity_helper.dart' -o coverage/lcov.info && \
    genhtml -q -o coverage coverage/lcov.info && \
	google-chrome coverage/index.html


### Example
# make test-file this=<file-path>
###
.PHONY: test-file
test-file:
	rm -rf coverage* && \
	flutter test --coverage $(this) && lcov --remove coverage/lcov.info 'lib/**/*.g.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.freezed.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.gr.dart' -o coverage/lcov.info && \
    genhtml -q -o coverage coverage/lcov.info && \
	google-chrome coverage/index.html


