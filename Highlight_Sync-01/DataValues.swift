//
//  DataValues.swift
//  Highlight_Sync-01
//
//  Created by Ryan Mooney on 9/10/16.
//  Copyright © 2016 Ryan Mooney. All rights reserved.
//

import Foundation

class DataValues {
    func getDataValues() -> (xValues: [String], yValues: [[Double]]) {
        let xVals: [String] = ["2014-12-22", "2014-12-23", "2014-12-24", "2014-12-26", "2014-12-29", "2014-12-30", "2014-12-31", "2015-01-02", "2015-01-05", "2015-01-06", "2015-01-07", "2015-01-08", "2015-01-09", "2015-01-12", "2015-01-13", "2015-01-14", "2015-01-15", "2015-01-16", "2015-01-20", "2015-01-21", "2015-01-22", "2015-01-23", "2015-01-26", "2015-01-27", "2015-01-28", "2015-01-29", "2015-01-30", "2015-02-02", "2015-02-03", "2015-02-04", "2015-02-05", "2015-02-06", "2015-02-09", "2015-02-10", "2015-02-11", "2015-02-12", "2015-02-13", "2015-02-17", "2015-02-18", "2015-02-19", "2015-02-20", "2015-02-23", "2015-02-24", "2015-02-25", "2015-02-26", "2015-02-27", "2015-03-02", "2015-03-03", "2015-03-04", "2015-03-05", "2015-03-06", "2015-03-09", "2015-03-10", "2015-03-11", "2015-03-12", "2015-03-13", "2015-03-16", "2015-03-17", "2015-03-18", "2015-03-19", "2015-03-20", "2015-03-23", "2015-03-24", "2015-03-25", "2015-03-26", "2015-03-27", "2015-03-30", "2015-03-31", "2015-04-01", "2015-04-02", "2015-04-06", "2015-04-07", "2015-04-08", "2015-04-09", "2015-04-10", "2015-04-13", "2015-04-14", "2015-04-15", "2015-04-16", "2015-04-17", "2015-04-20", "2015-04-21", "2015-04-22", "2015-04-23", "2015-04-24", "2015-04-27", "2015-04-28", "2015-04-29", "2015-04-30", "2015-05-01", "2015-05-04", "2015-05-05", "2015-05-06", "2015-05-07", "2015-05-08", "2015-05-11", "2015-05-12", "2015-05-13", "2015-05-14", "2015-05-15", "2015-05-18", "2015-05-19", "2015-05-20", "2015-05-21", "2015-05-22", "2015-05-26", "2015-05-27", "2015-05-28", "2015-05-29", "2015-06-01", "2015-06-02", "2015-06-03", "2015-06-04", "2015-06-05", "2015-06-08", "2015-06-09", "2015-06-10", "2015-06-11", "2015-06-12", "2015-06-15", "2015-06-16", "2015-06-17", "2015-06-18", "2015-06-19", "2015-06-22", "2015-06-23", "2015-06-24", "2015-06-25", "2015-06-26", "2015-06-29", "2015-06-30", "2015-07-01", "2015-07-02", "2015-07-06", "2015-07-07", "2015-07-08", "2015-07-09", "2015-07-10", "2015-07-13", "2015-07-14", "2015-07-15", "2015-07-16", "2015-07-17", "2015-07-20", "2015-07-21", "2015-07-22", "2015-07-23", "2015-07-24", "2015-07-27", "2015-07-28", "2015-07-29", "2015-07-30", "2015-07-31", "2015-08-03", "2015-08-04", "2015-08-05", "2015-08-06", "2015-08-07", "2015-08-10", "2015-08-11", "2015-08-12", "2015-08-13", "2015-08-14", "2015-08-17", "2015-08-18", "2015-08-19", "2015-08-20", "2015-08-21", "2015-08-24", "2015-08-25", "2015-08-26", "2015-08-27", "2015-08-28", "2015-08-31", "2015-09-01", "2015-09-02", "2015-09-03", "2015-09-04", "2015-09-08", "2015-09-09", "2015-09-10", "2015-09-11", "2015-09-14", "2015-09-15", "2015-09-16", "2015-09-17", "2015-09-18", "2015-09-21", "2015-09-22", "2015-09-23", "2015-09-24", "2015-09-25", "2015-09-28", "2015-09-29", "2015-09-30", "2015-10-01", "2015-10-02", "2015-10-05", "2015-10-06", "2015-10-07", "2015-10-08", "2015-10-09", "2015-10-12", "2015-10-13", "2015-10-14", "2015-10-15", "2015-10-16", "2015-10-19", "2015-10-20", "2015-10-21", "2015-10-22", "2015-10-23", "2015-10-26", "2015-10-27", "2015-10-28", "2015-10-29", "2015-10-30", "2015-11-02", "2015-11-03", "2015-11-04", "2015-11-05", "2015-11-06", "2015-11-09", "2015-11-10", "2015-11-11", "2015-11-12", "2015-11-13", "2015-11-16", "2015-11-17", "2015-11-18", "2015-11-19", "2015-11-20", "2015-11-23", "2015-11-24", "2015-11-25", "2015-11-27", "2015-11-30", "2015-12-01", "2015-12-02", "2015-12-03", "2015-12-04", "2015-12-07", "2015-12-08", "2015-12-09", "2015-12-10", "2015-12-11", "2015-12-14", "2015-12-15", "2015-12-16", "2015-12-17", "2015-12-18", "2015-12-21", "2015-12-22", "2015-12-23", "2015-12-24", "2015-12-28", "2015-12-29", "2015-12-30", "2015-12-31", "2016-01-04", "2016-01-05", "2016-01-06", "2016-01-07", "2016-01-08", "2016-01-11", "2016-01-12", "2016-01-13", "2016-01-14", "2016-01-15", "2016-01-19", "2016-01-20", "2016-01-21", "2016-01-22", "2016-01-25", "2016-01-26", "2016-01-27", "2016-01-28", "2016-01-29", "2016-02-01", "2016-02-02", "2016-02-03", "2016-02-04", "2016-02-05", "2016-02-08", "2016-02-09", "2016-02-10", "2016-02-11", "2016-02-12", "2016-02-16", "2016-02-17", "2016-02-18", "2016-02-19", "2016-02-22", "2016-02-23", "2016-02-24", "2016-02-25", "2016-02-26", "2016-02-29", "2016-03-01", "2016-03-02", "2016-03-03", "2016-03-04", "2016-03-07", "2016-03-08", "2016-03-09", "2016-03-10", "2016-03-11", "2016-03-14", "2016-03-15", "2016-03-16", "2016-03-17", "2016-03-18", "2016-03-21", "2016-03-22", "2016-03-23", "2016-03-24", "2016-03-28", "2016-03-29", "2016-03-30", "2016-03-31", "2016-04-01", "2016-04-04", "2016-04-05", "2016-04-06", "2016-04-07", "2016-04-08", "2016-04-11", "2016-04-12", "2016-04-13", "2016-04-14", "2016-04-15", "2016-04-18", "2016-04-19", "2016-04-20", "2016-04-21", "2016-04-22", "2016-04-25", "2016-04-26", "2016-04-27", "2016-04-28", "2016-04-29", "2016-05-02", "2016-05-03", "2016-05-04", "2016-05-05", "2016-05-06", "2016-05-09", "2016-05-10", "2016-05-11", "2016-05-12", "2016-05-13", "2016-05-16", "2016-05-17", "2016-05-18", "2016-05-19", "2016-05-20", "2016-05-23", "2016-05-24", "2016-05-25", "2016-05-26", "2016-05-27", "2016-05-31", "2016-06-01", "2016-06-02", "2016-06-03", "2016-06-06", "2016-06-07", "2016-06-08", "2016-06-09", "2016-06-10", "2016-06-13", "2016-06-14", "2016-06-15", "2016-06-16", "2016-06-17", "2016-06-20", "2016-06-21", "2016-06-22", "2016-06-23", "2016-06-24", "2016-06-27", "2016-06-28", "2016-06-29", "2016-06-30", "2016-07-01", "2016-07-05", "2016-07-06", "2016-07-07", "2016-07-08", "2016-07-11", "2016-07-12", "2016-07-13", "2016-07-14", "2016-07-15", "2016-07-18", "2016-07-19", "2016-07-20", "2016-07-21", "2016-07-22", "2016-07-25", "2016-07-26", "2016-07-27", "2016-07-28", "2016-07-29", "2016-08-01", "2016-08-02", "2016-08-03", "2016-08-04", "2016-08-05", "2016-08-08", "2016-08-09", "2016-08-10", "2016-08-11", "2016-08-12", "2016-08-15", "2016-08-16", "2016-08-17", "2016-08-18", "2016-08-19", "2016-08-22", "2016-08-23", "2016-08-24", "2016-08-25", "2016-08-26", "2016-08-29", "2016-08-30", "2016-08-31", "2016-09-01", "2016-09-02", "2016-09-06", "2016-09-07", "2016-09-08", "2016-09-09"]
        
        let yVals: [[Double]] = [[2065.0, 2076.0, 2064.0, 2072.5], [2073.0, 2084.5, 2071.5, 2078.5], [2078.75, 2083.5, 2077.0, 2078.25], [2078.75, 2088.75, 2078.5, 2085.5], [2086.0, 2088.75, 2076.0, 2087.25], [2087.5, 2088.5, 2073.0, 2076.0], [2076.25, 2082.75, 2050.75, 2054.0], [2055.0, 2067.25, 2038.75, 2046.25], [2045.75, 2048.25, 2009.5, 2018.0], [2019.0, 2023.5, 1984.25, 1995.25], [1996.5, 2023.75, 1995.75, 2020.25], [2020.5, 2058.5, 2020.25, 2054.0], [2053.75, 2062.0, 2031.25, 2033.5], [2034.5, 2048.25, 2015.25, 2023.75], [2023.75, 2051.75, 2001.0, 2017.5], [2017.25, 2019.5, 1981.25, 2010.25], [2009.75, 2027.25, 1978.25, 1979.75], [1980.75, 2014.25, 1970.25, 2014.0], [2013.5, 2026.5, 1997.5, 2016.25], [2015.75, 2032.75, 2005.25, 2027.25], [2026.75, 2059.25, 2019.25, 2056.75], [2056.5, 2062.5, 2042.25, 2043.25], [2035.0, 2055.0, 2025.5, 2054.5], [2054.0, 2054.75, 2013.25, 2036.5], [2036.5, 2046.5, 1991.25, 1992.5], [1993.5, 2020.0, 1982.0, 2019.0], [2019.25, 2020.5, 1986.25, 1989.75], [1990.5, 2018.5, 1973.75, 2015.25], [2015.0, 2044.0, 2007.0, 2041.0], [2040.5, 2049.25, 2022.75, 2024.0], [2025.0, 2058.75, 2020.75, 2056.0], [2056.25, 2068.0, 2044.5, 2054.75], [2050.0, 2051.75, 2036.5, 2043.75], [2043.75, 2066.5, 2040.5, 2062.5], [2062.75, 2079.5, 2053.25, 2073.25], [2071.5, 2085.5, 2058.5, 2082.75], [2083.0, 2095.0, 2081.5, 2094.75], [2091.25, 2098.75, 2080.75, 2096.5], [2096.5, 2098.5, 2088.5, 2095.5], [2095.25, 2099.5, 2087.25, 2095.75], [2096.0, 2108.75, 2082.25, 2107.25], [2107.25, 2108.25, 2099.75, 2106.25], [2106.25, 2115.75, 2102.75, 2113.75], [2113.75, 2117.75, 2107.25, 2110.5], [2110.5, 2114.75, 2101.5, 2109.75], [2109.5, 2111.0, 2100.75, 2104.5], [2104.0, 2115.5, 2100.5, 2114.25], [2114.0, 2114.5, 2095.5, 2104.75], [2104.75, 2104.75, 2085.25, 2096.25], [2096.5, 2103.5, 2093.25, 2099.5], [2099.5, 2103.5, 2065.5, 2072.25], [2073.5, 2082.5, 2066.0, 2080.25], [2077.5, 2078.0, 2046.0, 2049.25], [2044.25, 2052.25, 2038.25, 2041.25], [2042.0, 2066.5, 2038.25, 2064.25], [2064.25, 2068.75, 2040.0, 2050.75], [2050.75, 2081.75, 2044.5, 2074.75], [2074.5, 2078.75, 2064.25, 2074.5], [2074.25, 2107.75, 2060.5, 2100.0], [2101.0, 2107.25, 2085.0, 2088.5], [2088.5, 2105.5, 2086.5, 2101.25], [2097.75, 2107.0, 2093.25, 2094.5], [2094.0, 2101.0, 2083.0, 2085.25], [2085.25, 2089.25, 2052.25, 2056.25], [2056.0, 2058.75, 2033.25, 2049.75], [2050.0, 2057.75, 2041.0, 2052.25], [2052.75, 2081.75, 2047.25, 2074.25], [2074.75, 2076.75, 2056.25, 2057.75], [2058.0, 2060.75, 2033.5, 2055.0], [2055.25, 2064.75, 2044.0, 2060.25], [2039.5, 2080.0, 2038.75, 2071.75], [2071.5, 2082.75, 2066.0, 2068.25], [2068.5, 2080.25, 2064.5, 2077.75], [2077.75, 2087.0, 2066.75, 2086.25], [2086.0, 2096.25, 2083.0, 2095.75], [2095.25, 2101.25, 2085.25, 2087.75], [2087.0, 2092.75, 2075.75, 2091.75], [2091.75, 2105.5, 2087.25, 2101.75], [2101.5, 2104.75, 2089.0, 2101.25], [2101.25, 2101.75, 2064.5, 2076.25], [2081.0, 2097.5, 2078.5, 2089.5], [2089.5, 2105.25, 2087.25, 2091.75], [2092.0, 2103.75, 2080.25, 2099.0], [2099.25, 2114.5, 2087.5, 2108.5], [2107.5, 2114.75, 2103.0, 2112.0], [2113.25, 2119.75, 2100.25, 2104.0], [2103.75, 2112.5, 2088.25, 2111.25], [2110.75, 2112.5, 2090.5, 2098.0], [2098.25, 2102.0, 2070.25, 2083.0], [2082.75, 2102.5, 2080.5, 2102.25], [2101.75, 2115.0, 2098.0, 2109.75], [2109.5, 2111.75, 2081.5, 2085.75], [2085.5, 2093.75, 2061.25, 2075.0], [2074.75, 2088.25, 2057.0, 2085.0], [2085.25, 2113.5, 2084.0, 2107.75], [2110.0, 2113.5, 2095.75, 2096.75], [2097.75, 2101.0, 2079.25, 2096.25], [2096.25, 2106.5, 2091.5, 2095.75], [2096.0, 2118.25, 2092.0, 2117.25], [2117.25, 2122.75, 2113.25, 2120.0], [2119.25, 2128.75, 2112.25, 2126.75], [2126.75, 2134.0, 2121.25, 2124.0], [2124.25, 2132.25, 2119.25, 2120.5], [2120.75, 2132.0, 2115.0, 2128.75], [2129.25, 2131.0, 2122.75, 2124.5], [2124.5, 2127.0, 2096.0, 2106.0], [2105.75, 2124.25, 2101.25, 2120.25], [2120.0, 2122.75, 2110.5, 2122.5], [2121.75, 2122.75, 2102.25, 2106.0], [2107.0, 2117.75, 2100.25, 2111.5], [2111.0, 2116.0, 2094.0, 2106.75], [2107.0, 2120.75, 2106.75, 2116.25], [2116.25, 2116.5, 2091.25, 2098.75], [2098.75, 2102.75, 2083.5, 2091.5], [2092.0, 2093.25, 2076.25, 2079.5], [2080.0, 2084.75, 2068.75, 2080.25], [2080.75, 2108.0, 2080.0, 2106.25], [2106.0, 2114.75, 2103.25, 2110.25], [2109.0, 2109.25, 2090.25, 2093.25], [2087.0, 2089.75, 2071.25, 2083.25], [2083.5, 2098.25, 2070.5, 2097.5], [2097.75, 2107.0, 2087.0, 2097.25], [2097.25, 2127.5, 2090.5, 2123.25], [2123.25, 2126.5, 2118.25, 2118.5], [2105.75, 2122.0, 2103.5, 2114.75], [2114.75, 2120.5, 2111.25, 2117.5], [2117.5, 2118.5, 2099.0, 2101.0], [2101.25, 2112.75, 2092.0, 2094.5], [2094.75, 2100.75, 2086.25, 2095.5], [2064.0, 2083.25, 2047.25, 2052.75], [2054.5, 2069.0, 2046.75, 2055.0], [2054.5, 2077.5, 2054.5, 2071.75], [2071.5, 2079.0, 2062.25, 2069.0], [2037.25, 2071.75, 2034.25, 2068.25], [2067.75, 2078.0, 2035.0, 2073.75], [2073.0, 2073.25, 2036.25, 2039.5], [2039.75, 2068.0, 2038.25, 2041.25], [2044.75, 2074.75, 2044.75, 2070.0], [2054.75, 2094.75, 2052.0, 2094.75], [2094.0, 2105.5, 2090.5, 2102.75], [2102.5, 2107.75, 2095.0, 2105.25], [2104.0, 2118.5, 2102.75, 2117.25], [2117.0, 2120.0, 2112.75, 2119.75], [2118.0, 2126.25, 2116.5, 2122.5], [2121.25, 2125.0, 2106.75, 2107.0], [2107.75, 2112.0, 2102.25, 2110.0], [2109.25, 2113.75, 2091.5, 2101.5], [2101.0, 2104.0, 2069.75, 2078.75], [2078.25, 2080.75, 2056.5, 2064.75], [2065.5, 2089.0, 2061.5, 2088.5], [2088.0, 2104.25, 2084.5, 2101.0], [2099.5, 2104.25, 2087.75, 2102.25], [2101.75, 2109.25, 2095.25, 2099.25], [2098.75, 2102.5, 2080.0, 2091.0], [2090.5, 2096.25, 2081.5, 2082.75], [2082.5, 2107.0, 2082.25, 2094.75], [2094.0, 2099.25, 2070.0, 2079.75], [2080.0, 2082.75, 2062.0, 2072.5], [2072.0, 2101.25, 2071.75, 2101.0], [2100.75, 2101.75, 2070.75, 2080.75], [2080.75, 2085.25, 2046.5, 2082.75], [2082.75, 2093.0, 2073.25, 2079.5], [2079.25, 2090.5, 2073.75, 2089.75], [2089.5, 2100.5, 2074.75, 2098.75], [2098.25, 2103.75, 2090.25, 2093.25], [2093.25, 2098.0, 2066.5, 2073.5], [2073.5, 2077.75, 2024.5, 2025.25], [2026.25, 2029.0, 1967.25, 1968.25], [1964.5, 1964.75, 1831.0, 1870.5], [1872.75, 1948.5, 1860.0, 1874.0], [1876.0, 1943.0, 1850.5, 1939.75], [1941.25, 1990.25, 1934.5, 1989.0], [1988.25, 1992.75, 1967.25, 1986.25], [1986.25, 1987.75, 1959.25, 1965.5], [1965.5, 1966.25, 1898.75, 1912.75], [1913.5, 1949.0, 1907.25, 1948.0], [1947.5, 1973.5, 1942.0, 1946.75], [1947.25, 1949.25, 1907.75, 1918.0], [1916.75, 1968.75, 1915.75, 1966.0], [1966.5, 1992.0, 1935.5, 1943.75], [1943.75, 1967.25, 1928.5, 1951.5], [1949.5, 1962.5, 1937.25, 1962.0], [1963.75, 1974.25, 1946.5, 1954.0], [1953.25, 1983.0, 1945.0, 1980.75], [1979.75, 1999.0, 1972.75, 1997.5], [1997.0, 2021.5, 1982.5, 1988.5], [1988.0, 1993.75, 1954.75, 1960.0], [1949.25, 1969.0, 1938.5, 1963.75], [1964.25, 1965.0, 1917.75, 1929.75], [1930.5, 1941.75, 1910.5, 1931.5], [1931.75, 1936.25, 1897.25, 1919.75], [1913.25, 1951.0, 1910.25, 1915.25], [1915.5, 1929.75, 1868.75, 1874.75], [1876.25, 1889.75, 1861.0, 1874.5], [1875.0, 1910.5, 1871.25, 1902.5], [1902.5, 1929.5, 1890.25, 1917.25], [1917.0, 1943.75, 1883.0, 1943.0], [1941.0, 1980.0, 1937.25, 1975.5], [1973.0, 1982.25, 1962.5, 1964.5], [1961.0, 1991.25, 1960.5, 1988.5], [1987.75, 2008.75, 1971.0, 2005.75], [2004.0, 2014.0, 1998.75, 2006.5], [2005.25, 2014.0, 2001.75, 2012.5], [2012.0, 2014.75, 1991.25, 1992.25], [1991.5, 2001.75, 1982.5, 1985.25], [1985.75, 2019.5, 1985.0, 2018.75], [2018.25, 2026.5, 2012.25, 2026.25], [2024.5, 2028.0, 2014.25, 2027.25], [2026.5, 2031.5, 2018.5, 2019.75], [2019.75, 2034.25, 2007.5, 2010.75], [2010.5, 2056.0, 2008.5, 2055.75], [2054.25, 2074.5, 2053.25, 2065.0], [2066.0, 2068.0, 2057.5, 2062.75], [2063.75, 2064.75, 2051.25, 2063.75], [2062.0, 2085.25, 2055.5, 2081.5], [2081.0, 2086.5, 2073.25, 2084.75], [2084.75, 2094.75, 2069.75, 2074.0], [2073.0, 2100.0, 2064.25, 2093.25], [2093.25, 2110.25, 2089.0, 2102.5], [2102.5, 2109.75, 2090.5, 2096.25], [2095.5, 2104.75, 2084.0, 2095.25], [2094.75, 2099.0, 2077.5, 2093.5], [2092.0, 2097.75, 2062.0, 2072.25], [2072.25, 2079.0, 2064.5, 2077.0], [2076.5, 2087.25, 2067.75, 2068.5], [2068.5, 2077.5, 2039.5, 2040.5], [2040.5, 2046.0, 2011.5, 2013.0], [2006.5, 2051.0, 1998.5, 2048.75], [2041.5, 2063.5, 2041.5, 2049.75], [2049.75, 2082.5, 2043.0, 2078.5], [2078.25, 2089.25, 2075.25, 2079.25], [2078.25, 2094.5, 2076.0, 2088.75], [2089.75, 2093.0, 2078.25, 2083.25], [2083.0, 2091.5, 2065.5, 2084.0], [2084.0, 2092.5, 2082.25, 2088.5], [2081.5, 2098.25, 2081.5, 2090.5], [2089.5, 2095.0, 2078.5, 2085.25], [2083.5, 2101.5, 2083.5, 2099.25], [2075.0, 2105.0, 2075.0, 2083.5], [2083.25, 2095.25, 2040.0, 2053.5], [2053.25, 2093.0, 2046.75, 2088.5], [2092.25, 2095.5, 2064.5, 2081.0], [2080.0, 2081.5, 2050.25, 2060.0], [2034.25, 2079.75, 2034.25, 2045.25], [2045.75, 2067.0, 2043.75, 2050.5], [2005.0, 2056.25, 2005.0, 2007.0], [2008.0, 2028.25, 1992.25, 2020.5], [2019.0, 2054.0, 2019.0, 2046.25], [2046.0, 2077.0, 2040.0, 2068.25], [2032.5, 2082.25, 2032.5, 2032.5], [2033.25, 2040.25, 2022.0, 2032.5], [1997.25, 2019.5, 1995.25, 2018.0], [2007.25, 2036.5, 2007.25, 2033.75], [2034.0, 2057.75, 2030.75, 2053.0], [2052.75, 2059.75, 2049.0, 2050.75], [2051.25, 2054.5, 2035.25, 2050.0], [2047.5, 2074.5, 2047.5, 2073.25], [2072.0, 2075.0, 2053.5, 2056.25], [2055.25, 2057.75, 2030.25, 2035.75], [2037.75, 2043.5, 1980.25, 2009.5], [2009.0, 2017.0, 1992.25, 2010.25], [2010.75, 2013.25, 1970.5, 1986.75], [1987.75, 1991.0, 1928.5, 1934.5], [1910.0, 1964.75, 1910.0, 1913.25], [1909.25, 1929.0, 1892.5, 1912.5], [1913.5, 1940.25, 1899.0, 1922.5], [1922.5, 1946.5, 1878.0, 1883.0], [1883.75, 1927.5, 1871.0, 1912.25], [1849.25, 1919.75, 1849.25, 1876.5], [1869.75, 1907.5, 1856.25, 1872.0], [1804.25, 1852.0, 1804.25, 1852.0], [1854.75, 1883.25, 1836.25, 1861.5], [1858.5, 1902.25, 1855.75, 1899.25], [1899.5, 1904.25, 1855.75, 1871.75], [1871.75, 1899.75, 1851.25, 1888.0], [1885.25, 1910.0, 1864.5, 1878.0], [1865.75, 1902.5, 1865.75, 1882.0], [1878.75, 1933.0, 1876.5, 1931.25], [1929.75, 1940.0, 1912.5, 1928.75], [1928.5, 1929.25, 1889.0, 1896.75], [1865.0, 1912.25, 1865.0, 1908.0], [1890.25, 1922.25, 1890.25, 1905.75], [1905.25, 1914.5, 1865.75, 1873.75], [1876.25, 1884.5, 1821.75, 1851.0], [1849.75, 1863.75, 1825.75, 1846.25], [1850.0, 1877.75, 1838.5, 1842.25], [1802.5, 1825.5, 1802.5, 1825.5], [1827.25, 1860.75, 1822.5, 1860.0], [1865.25, 1892.75, 1865.0, 1887.75], [1888.25, 1927.25, 1881.5, 1927.25], [1911.25, 1933.5, 1911.25, 1918.0], [1917.5, 1922.75, 1898.5, 1914.25], [1911.0, 1943.75, 1908.25, 1933.5], [1934.0, 1938.0, 1913.75, 1914.25], [1914.0, 1933.75, 1886.75, 1933.5], [1933.0, 1951.5, 1920.25, 1949.75], [1949.0, 1968.75, 1941.25, 1941.25], [1943.0, 1956.25, 1926.5, 1928.25], [1928.0, 1978.5, 1920.75, 1977.5], [1976.25, 1984.75, 1966.25, 1982.25], [1981.75, 1992.5, 1974.75, 1991.5], [1991.0, 2007.5, 1984.0, 1994.75], [1994.5, 2004.5, 1984.5, 1999.75], [1999.0, 2000.25, 1976.0, 1982.5], [1981.75, 1994.0, 1978.0, 1989.25], [1990.0, 2010.25, 1967.25, 1989.75], [1988.5, 2022.25, 1987.5, 2021.0], [2019.25, 2024.5, 2012.0, 2018.5], [2019.0, 2019.5, 2004.5, 2016.0], [2016.25, 2032.25, 2006.5, 2027.25], [2026.75, 2046.75, 2015.75, 2041.0], [2041.5, 2048.75, 2037.0, 2048.0], [2036.5, 2044.5, 2031.0, 2043.25], [2043.25, 2047.5, 2028.75, 2043.25], [2043.0, 2045.25, 2025.25, 2028.25], [2028.0, 2030.25, 2012.25, 2030.25], [2030.25, 2039.75, 2022.0, 2028.0], [2027.75, 2049.25, 2019.25, 2048.75], [2048.5, 2064.5, 2046.75, 2055.5], [2055.5, 2059.75, 2047.25, 2052.25], [2052.75, 2067.0, 2035.25, 2064.75], [2064.0, 2071.5, 2054.25, 2056.75], [2055.5, 2055.5, 2034.25, 2041.75], [2042.0, 2060.5, 2035.0, 2059.25], [2059.75, 2062.0, 2026.0, 2035.25], [2034.5, 2054.25, 2030.25, 2041.75], [2041.0, 2056.5, 2032.5, 2033.0], [2032.5, 2058.5, 2029.25, 2055.5], [2055.25, 2077.0, 2054.0, 2075.75], [2076.25, 2081.75, 2068.5, 2077.75], [2077.75, 2080.0, 2069.5, 2074.75], [2064.25, 2088.75, 2058.5, 2086.25], [2085.25, 2098.5, 2084.75, 2094.25], [2094.25, 2105.25, 2085.75, 2097.75], [2097.75, 2104.0, 2078.75, 2082.5], [2079.75, 2089.0, 2075.0, 2086.0], [2091.5, 2091.5, 2071.0, 2084.25], [2084.25, 2091.25, 2079.5, 2084.0], [2082.25, 2094.0, 2076.25, 2092.75], [2092.5, 2094.25, 2065.25, 2074.25], [2073.75, 2076.0, 2045.75, 2060.25], [2060.75, 2077.5, 2055.5, 2075.75], [2075.5, 2076.25, 2048.0, 2058.0], [2057.5, 2060.25, 2039.0, 2046.75], [2046.5, 2060.0, 2039.5, 2043.25], [2043.5, 2054.5, 2030.5, 2054.25], [2053.0, 2059.75, 2048.25, 2054.25], [2054.0, 2079.75, 2048.0, 2077.0], [2077.25, 2078.75, 2057.5, 2059.25], [2059.0, 2072.75, 2048.5, 2060.0], [2059.25, 2063.5, 2038.5, 2042.5], [2041.25, 2068.5, 2035.0, 2061.75], [2062.0, 2069.5, 2036.75, 2044.5], [2043.75, 2057.75, 2030.75, 2043.25], [2043.5, 2044.75, 2022.0, 2039.0], [2038.75, 2055.5, 2037.25, 2050.0], [2053.25, 2056.0, 2043.5, 2045.0], [2045.0, 2077.25, 2041.25, 2075.0], [2075.0, 2092.5, 2073.5, 2088.75], [2088.75, 2091.75, 2082.5, 2090.75], [2090.5, 2098.75, 2088.0, 2098.5], [2100.0, 2103.75, 2086.0, 2094.5], [2094.0, 2099.25, 2083.25, 2097.0], [2096.75, 2104.75, 2086.75, 2103.5], [2103.5, 2106.0, 2082.75, 2097.25], [2097.5, 2112.25, 2094.0, 2108.5], [2108.25, 2118.0, 2106.5, 2110.25], [2110.25, 2119.75, 2106.5, 2117.75], [2117.75, 2118.5, 2106.25, 2113.75], [2113.75, 2114.0, 2088.5, 2095.75], [2089.25, 2098.25, 2075.75, 2076.0], [2077.0, 2081.75, 2063.25, 2073.25], [2072.75, 2086.25, 2068.75, 2070.75], [2070.5, 2080.0, 2050.0, 2077.75], [2077.75, 2083.0, 2073.75, 2078.5], [2071.0, 2092.5, 2070.25, 2082.75], [2079.0, 2086.0, 2074.0, 2079.25], [2079.25, 2091.25, 2075.25, 2077.0], [2083.0, 2113.25, 2083.0, 2113.25], [2115.75, 2119.5, 1999.0, 2018.25], [2013.75, 2022.5, 1981.5, 1982.0], [1982.5, 2029.75, 1982.25, 2028.25], [2028.25, 2074.75, 2022.75, 2074.25], [2072.25, 2091.25, 2056.5, 2086.5], [2086.5, 2100.75, 2081.5, 2096.25], [2099.75, 2104.75, 2072.5, 2084.5], [2084.0, 2094.5, 2065.75, 2093.0], [2092.0, 2102.0, 2081.75, 2092.25], [2092.0, 2125.5, 2087.5, 2120.75], [2120.25, 2136.75, 2120.0, 2130.5], [2130.75, 2149.25, 2128.5, 2146.0], [2145.75, 2152.25, 2139.5, 2145.75], [2145.25, 2168.0, 2142.75, 2157.75], [2156.5, 2164.75, 2143.25, 2146.0], [2154.5, 2163.25, 2152.75, 2160.25], [2160.0, 2160.75, 2151.25, 2159.0], [2159.0, 2169.75, 2155.25, 2168.75], [2168.25, 2170.25, 2153.5, 2159.25], [2159.0, 2169.25, 2156.0, 2167.25], [2167.75, 2172.5, 2155.75, 2163.25], [2162.75, 2168.0, 2153.75, 2166.0], [2166.0, 2169.25, 2152.0, 2163.25], [2162.75, 2168.5, 2153.5, 2166.0], [2165.5, 2171.75, 2157.5, 2171.0], [2174.0, 2177.75, 2159.75, 2165.5], [2166.0, 2171.0, 2141.5, 2153.0], [2152.25, 2158.25, 2145.25, 2156.75], [2156.75, 2164.25, 2154.0, 2160.25], [2159.5, 2178.5, 2159.25, 2177.5], [2176.0, 2183.0, 2173.25, 2176.5], [2176.0, 2183.5, 2173.75, 2178.25], [2178.0, 2181.5, 2167.75, 2172.75], [2172.5, 2185.25, 2170.0, 2181.75], [2181.75, 2184.0, 2175.5, 2181.25], [2180.75, 2190.75, 2180.5, 2185.5], [2186.0, 2186.25, 2175.25, 2178.25], [2177.5, 2182.0, 2165.5, 2180.75], [2180.75, 2184.5, 2176.25, 2183.0], [2183.5, 2184.25, 2172.5, 2182.5], [2181.75, 2184.5, 2173.5, 2181.0], [2180.75, 2191.5, 2179.25, 2185.5], [2185.75, 2187.75, 2168.75, 2175.25], [2175.0, 2177.25, 2167.5, 2174.5], [2174.0, 2186.75, 2157.5, 2167.25], [2167.75, 2182.25, 2164.5, 2180.0], [2180.0, 2181.5, 2168.5, 2175.75], [2175.75, 2176.25, 2159.5, 2168.5], [2169.0, 2177.25, 2154.75, 2166.25], [2166.25, 2183.75, 2164.25, 2179.25], [2179.25, 2186.25, 2173.0, 2185.25], [2185.25, 2186.75, 2177.5, 2184.75], [2184.5, 2189.25, 2175.75, 2178.0], [2177.25, 2178.25, 2119.75, 2121.25]]
        
        return (xVals, yVals)
    }
}