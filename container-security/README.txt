https://github.com/aquasecurity/trivy

Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues

[root@server1 dockerize_app]# trivy image alpine:3.10.7
2021-07-23T07:11:23.100-0400	INFO	Need to update DB
2021-07-23T07:11:23.100-0400	INFO	Downloading DB...
22.63 MiB / 22.63 MiB [---------------------------------------------------------------------------------------------------------------------------------] 100.00% 13.94 MiB p/s 2s
2021-07-23T07:11:31.831-0400	INFO	Detected OS: alpine
2021-07-23T07:11:31.831-0400	INFO	Detecting Alpine vulnerabilities...
2021-07-23T07:11:31.831-0400	INFO	Number of language-specific files: 0
2021-07-23T07:11:31.831-0400	WARN	This OS version is no longer supported by the distribution: alpine 3.10.7
2021-07-23T07:11:31.831-0400	WARN	The vulnerability detection may be insufficient because security updates are not provided

alpine:3.10.7 (alpine 3.10.7)
=============================
Total: 3 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 3, CRITICAL: 0)

+------------+------------------+----------+-------------------+---------------+---------------------------------------+
|  LIBRARY   | VULNERABILITY ID | SEVERITY | INSTALLED VERSION | FIXED VERSION |                 TITLE                 |
+------------+------------------+----------+-------------------+---------------+---------------------------------------+
| apk-tools  | CVE-2021-30139   | HIGH     | 2.10.4-r2         | 2.10.6-r0     | In Alpine Linux apk-tools             |
|            |                  |          |                   |               | before 2.12.5, the tarball            |
|            |                  |          |                   |               | parser allows a buffer...             |
|            |                  |          |                   |               | -->avd.aquasec.com/nvd/cve-2021-30139 |
+------------+------------------+          +-------------------+---------------+---------------------------------------+
| busybox    | CVE-2021-28831   |          | 1.30.1-r4         | 1.30.1-r5     | busybox: invalid free or segmentation |
|            |                  |          |                   |               | fault via malformed gzip data         |
|            |                  |          |                   |               | -->avd.aquasec.com/nvd/cve-2021-28831 |
+------------+                  +          +                   +               +                                       +
| ssl_client |                  |          |                   |               |                                       |
|            |                  |          |                   |               |                                       |
|            |                  |          |                   |               |                                       |
+------------+------------------+----------+-------------------+---------------+-------------------------