#!/bin/bash
set -e

dbt build

dbt docs generate

exec dbt docs serve
