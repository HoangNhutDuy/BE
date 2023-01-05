<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z cart</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/shopping-cart.css">

</head>

<body>
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <header id="header"></header>
    <div class="container">
        <div class="cart_page">
            <table class="table-product">
                <tr><th>Sản phẩm</th><th>Giá tiền</th></tr>

                <c:forEach var="product" items="${productList}">
                <tr>
                    <td>
                        <div class="product_details">
                            <div class="product_img">
                                <img src="<c:out value="${product.getImg()}"/>"  alt="image">
                            </div>
                            <div class="product_info">
                                <p><c:out value="${product.getNameCate()}"/></p>
                                <small>Giá: <c:out value="${product.getPrice()}"/> VND</small>
                                <br>
                                <a href="/CartController?action=remove&productID=${product.id}" class="remove">Xóa</a>
                            </div>
                        </div>
                    </td>
                    <td>
                        <c:out value="${product.getPrice()}"/> VND
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>
        <div class="total_price">
            <table>
                <tr>
                    <td>Thành tiền</td>
                    <td>${sessionScope.cart.getTotalPrice()} VND</td>
                </tr>
                <tr>
                    <td>Thuế</td>
                    <td>${sessionScope.cart.getTax()} VND</td>
                </tr>
                <tr>
                    <td>Tổng tiền</td>
                    <td>${sessionScope.cart.getAfterTaxes()} VND</td>
                </tr>
            </table>
        </div>
        <div class="payment">
            <button class="continue_buy_btn"><a style="text-decoration:  none; color: black" href="/HomeControl">Quay lại mua hàng</a></button>
            <button class="payment_btn" type="submit"><a href="form-payment.html">Thanh toán</a></button>
        </div>
    </div>
    <footer id="footer" class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
        <script src="js/plugins.js"></script>
        <script src="js/header.jsp"></script>
        <script src="js/footer.jsp"></script>
        <script>
            $(window).on("load", function () {
                $('body').addClass('loaded');
            });05-Jan-2023 14:38:12.949 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Architecture:          amd64
            05-Jan-2023 14:38:12.949 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Java Home:             D:\Web\libraries\jdk-17
            05-Jan-2023 14:38:12.949 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log JVM Version:           17+35-2724
            05-Jan-2023 14:38:12.950 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log JVM Vendor:            Oracle Corporation
            05-Jan-2023 14:38:12.950 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log CATALINA_BASE:         C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286
            05-Jan-2023 14:38:12.950 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log CATALINA_HOME:         D:\Web\libraries\apache-tomcat-9.0.33
            05-Jan-2023 14:38:12.951 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: --add-opens=java.base/java.lang=ALL-UNNAMED
            05-Jan-2023 14:38:12.951 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: --add-opens=java.base/java.io=ALL-UNNAMED
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: --add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.util.logging.config.file=C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\logging.properties
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcom.sun.management.jmxremote=
                05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcom.sun.management.jmxremote.port=1099
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcom.sun.management.jmxremote.ssl=false
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcom.sun.management.jmxremote.password.file=C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\jmxremote.password
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcom.sun.management.jmxremote.access.file=C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\jmxremote.access
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.rmi.server.hostname=127.0.0.1
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djdk.tls.ephemeralDHKeySize=2048
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.protocol.handler.pkgs=org.apache.catalina.webresources
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dignore.endorsed.dirs=
                05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcatalina.base=C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286
            05-Jan-2023 14:38:12.952 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcatalina.home=D:\Web\libraries\apache-tomcat-9.0.33
            05-Jan-2023 14:38:12.953 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.io.tmpdir=D:\Web\libraries\apache-tomcat-9.0.33\temp
            05-Jan-2023 14:38:12.953 INFO [main] org.apache.catalina.core.AprLifecycleListener.lifecycleEvent Loaded APR based Apache Tomcat Native library [1.2.23] using APR version [1.7.0].
            05-Jan-2023 14:38:12.953 INFO [main] org.apache.catalina.core.AprLifecycleListener.lifecycleEvent APR capabilities: IPv6 [true], sendfile [true], accept filters [false], random [true].
            05-Jan-2023 14:38:12.953 INFO [main] org.apache.catalina.core.AprLifecycleListener.lifecycleEvent APR/OpenSSL configuration: useAprConnector [false], useOpenSSL [true]
            05-Jan-2023 14:38:12.956 INFO [main] org.apache.catalina.core.AprLifecycleListener.initializeSSL OpenSSL successfully initialized [OpenSSL 1.1.1c  28 May 2019]
            05-Jan-2023 14:38:13.096 INFO [main] org.apache.coyote.AbstractProtocol.init Initializing ProtocolHandler ["http-nio-8080"]
            05-Jan-2023 14:38:13.142 INFO [main] org.apache.catalina.startup.Catalina.load Server initialization in [358] milliseconds
            05-Jan-2023 14:38:13.186 INFO [main] org.apache.catalina.core.StandardService.startInternal Starting service [Catalina]
            05-Jan-2023 14:38:13.186 INFO [main] org.apache.catalina.core.StandardEngine.startInternal Starting Servlet engine: [Apache Tomcat/9.0.33]
            05-Jan-2023 14:38:13.195 INFO [main] org.apache.coyote.AbstractProtocol.start Starting ProtocolHandler ["http-nio-8080"]
            05-Jan-2023 14:38:13.203 INFO [main] org.apache.catalina.startup.Catalina.start Server startup in [60] milliseconds
            Connected to server
                [2023-01-05 02:38:13,342] Artifact BE:war: Artifact is being deployed, please wait...
            05-Jan-2023 14:38:16.944 INFO [RMI TCP Connection(3)-127.0.0.1] org.apache.jasper.servlet.TldScanner.scanJars At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
                [2023-01-05 02:38:17,031] Artifact BE:war: Artifact is deployed successfully
                [2023-01-05 02:38:17,031] Artifact BE:war: Deploy took 3,689 milliseconds
            05-Jan-2023 14:38:23.205 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDirectory Deploying web application directory [D:\Web\libraries\apache-tomcat-9.0.33\webapps\manager]
            05-Jan-2023 14:38:23.263 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDirectory Deployment of web application directory [D:\Web\libraries\apache-tomcat-9.0.33\webapps\manager] has finished in [58] ms
            wooden
            wooden
            05-Jan-2023 14:43:54.195 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.undeploy Undeploying context []
            05-Jan-2023 14:43:54.223 WARNING [Catalina-utility-1] org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesJdbc The web application [ROOT] registered the JDBC driver [com.mysql.cj.jdbc.Driver] but failed to unregister it when the web application was stopped. To prevent a memory leak, the JDBC Driver has been forcibly unregistered.
            05-Jan-2023 14:43:54.224 WARNING [Catalina-utility-1] org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesThreads The web application [ROOT] appears to have started a thread named [mysql-cj-abandoned-connection-cleanup] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
                java.base@17/java.lang.Object.wait(Native Method)
            java.base@17/java.lang.ref.ReferenceQueue.remove(ReferenceQueue.java:155)
            com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.run(AbandonedConnectionCleanupThread.java:91)
            java.base@17/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
            java.base@17/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
            java.base@17/java.lang.Thread.run(Thread.java:833)
            05-Jan-2023 14:43:54.465 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor Deploying deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml]
            05-Jan-2023 14:43:54.467 WARNING [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor The path attribute with value [] in deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml] has been ignored
            05-Jan-2023 14:43:54.472 SEVERE [Catalina-utility-1] org.apache.catalina.startup.ContextConfig.beforeStart Exception fixing docBase for context []
                java.io.FileNotFoundException: D:\Web\git\project\final-be\BE\target\BackEnd.war (The system cannot find the file specified)
            at java.base/java.io.FileInputStream.open0(Native Method)
            at java.base/java.io.FileInputStream.open(FileInputStream.java:216)
            at java.base/java.io.FileInputStream.<init>(FileInputStream.java:157)
                at java.base/java.io.FileInputStream.<init>(FileInputStream.java:111)
                    at java.base/sun.net.www.protocol.file.FileURLConnection.connect(FileURLConnection.java:86)
                    at java.base/sun.net.www.protocol.file.FileURLConnection.getInputStream(FileURLConnection.java:189)
                    at org.apache.catalina.startup.ExpandWar.expand(ExpandWar.java:90)
                    at org.apache.catalina.startup.ContextConfig.fixDocBase(ContextConfig.java:615)
                    at org.apache.catalina.startup.ContextConfig.beforeStart(ContextConfig.java:747)
                    at org.apache.catalina.startup.ContextConfig.lifecycleEvent(ContextConfig.java:303)
                    at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                    at org.apache.catalina.util.LifecycleBase.setStateInternal(LifecycleBase.java:423)
                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:182)
                    at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:717)
                    at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:690)
                    at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:705)
                    at org.apache.catalina.startup.HostConfig.deployDescriptor(HostConfig.java:631)
                    at org.apache.catalina.startup.HostConfig$DeployDescriptor.run(HostConfig.java:1831)
                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                    at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
                    at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
                    at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:123)
                    at org.apache.catalina.startup.HostConfig.deployDescriptors(HostConfig.java:526)
                    at org.apache.catalina.startup.HostConfig.deployApps(HostConfig.java:425)
                    at org.apache.catalina.startup.HostConfig.check(HostConfig.java:1620)
                    at org.apache.catalina.startup.HostConfig.lifecycleEvent(HostConfig.java:305)
                    at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                    at org.apache.catalina.core.ContainerBase.backgroundProcess(ContainerBase.java:1151)
                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1353)
                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1357)
                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.run(ContainerBase.java:1335)
                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                    at java.base/java.util.concurrent.FutureTask.runAndReset(FutureTask.java:305)
                    at java.base/java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:305)
                    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                    at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
                    at java.base/java.lang.Thread.run(Thread.java:833)
                    05-Jan-2023 14:43:54.475 SEVERE [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor Error deploying deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml]
                    java.lang.IllegalStateException: Error starting child
                    at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:720)
                    at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:690)
                    at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:705)
                    at org.apache.catalina.startup.HostConfig.deployDescriptor(HostConfig.java:631)
                    at org.apache.catalina.startup.HostConfig$DeployDescriptor.run(HostConfig.java:1831)
                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                    at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
                    at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
                    at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:123)
                    at org.apache.catalina.startup.HostConfig.deployDescriptors(HostConfig.java:526)
                    at org.apache.catalina.startup.HostConfig.deployApps(HostConfig.java:425)
                    at org.apache.catalina.startup.HostConfig.check(HostConfig.java:1620)
                    at org.apache.catalina.startup.HostConfig.lifecycleEvent(HostConfig.java:305)
                    at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                    at org.apache.catalina.core.ContainerBase.backgroundProcess(ContainerBase.java:1151)
                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1353)
                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1357)
                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.run(ContainerBase.java:1335)
                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                    at java.base/java.util.concurrent.FutureTask.runAndReset(FutureTask.java:305)
                    at java.base/java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:305)
                    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                    at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
                    at java.base/java.lang.Thread.run(Thread.java:833)
                    Caused by: org.apache.catalina.LifecycleException: Failed to start component [org.apache.catalina.webresources.StandardRoot@662bb9a0]
                    at org.apache.catalina.util.LifecycleBase.handleSubClassException(LifecycleBase.java:440)
                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:198)
                    at org.apache.catalina.core.StandardContext.resourcesStart(StandardContext.java:4805)
                    at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4940)
                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
                    at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:717)
                    ... 24 more
                    Caused by: java.lang.IllegalArgumentException: The main resource set specified [D:\Web\git\project\final-be\BE\target\BackEnd.war] is not valid
                    at org.apache.catalina.webresources.StandardRoot.createMainResourceSet(StandardRoot.java:752)
                    at org.apache.catalina.webresources.StandardRoot.startInternal(StandardRoot.java:709)
                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
                    ... 28 more
                    05-Jan-2023 14:43:54.478 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor Deployment of deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml] has finished in [12] ms
                    05-Jan-2023 14:43:55.024 INFO [mysql-cj-abandoned-connection-cleanup] org.apache.catalina.loader.WebappClassLoaderBase.checkStateForResourceLoading Illegal access: this web application instance has been stopped already. Could not load []. The following stack trace is thrown for debugging purposes as well as to attempt to terminate the thread which caused the illegal access.
                    java.lang.IllegalStateException: Illegal access: this web application instance has been stopped already. Could not load []. The following stack trace is thrown for debugging purposes as well as to attempt to terminate the thread which caused the illegal access.
                    at org.apache.catalina.loader.WebappClassLoaderBase.checkStateForResourceLoading(WebappClassLoaderBase.java:1385)
                    at org.apache.catalina.loader.WebappClassLoaderBase.getResource(WebappClassLoaderBase.java:1038)
                    at com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkThreadContextClassLoader(AbandonedConnectionCleanupThread.java:123)
                    at com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.run(AbandonedConnectionCleanupThread.java:90)
                    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                    at java.base/java.lang.Thread.run(Thread.java:833)
                    [2023-01-05 02:44:02,780] Artifact BE:war: Artifact is being deployed, please wait...
                    05-Jan-2023 14:44:06.468 INFO [RMI TCP Connection(6)-127.0.0.1] org.apache.jasper.servlet.TldScanner.scanJars At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
                    [2023-01-05 02:44:07,003] Artifact BE:war: Artifact is deployed successfully
                    [2023-01-05 02:44:07,003] Artifact BE:war: Deploy took 4,223 milliseconds
                    a
                    a
                    a
                    a
                    a
                    hahaha
                    hahaha
                    hahaha
                    hahaha
                    hahaha
                    05-Jan-2023 14:47:05.231 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.undeploy Undeploying context []
                    05-Jan-2023 14:47:05.244 WARNING [Catalina-utility-1] org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesJdbc The web application [ROOT] registered the JDBC driver [com.mysql.cj.jdbc.Driver] but failed to unregister it when the web application was stopped. To prevent a memory leak, the JDBC Driver has been forcibly unregistered.
                    05-Jan-2023 14:47:05.245 WARNING [Catalina-utility-1] org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesThreads The web application [ROOT] appears to have started a thread named [mysql-cj-abandoned-connection-cleanup] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
                    java.base@17/java.lang.Object.wait(Native Method)
                    java.base@17/java.lang.ref.ReferenceQueue.remove(ReferenceQueue.java:155)
                    com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.run(AbandonedConnectionCleanupThread.java:91)
                    java.base@17/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                    java.base@17/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                    java.base@17/java.lang.Thread.run(Thread.java:833)
                    05-Jan-2023 14:47:05.406 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor Deploying deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml]
                    05-Jan-2023 14:47:05.407 WARNING [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor The path attribute with value [] in deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml] has been ignored
                    05-Jan-2023 14:47:05.413 SEVERE [Catalina-utility-1] org.apache.catalina.startup.ContextConfig.beforeStart Exception fixing docBase for context []
                    java.io.FileNotFoundException: D:\Web\git\project\final-be\BE\target\BackEnd.war (The system cannot find the file specified)
                    at java.base/java.io.FileInputStream.open0(Native Method)
                    at java.base/java.io.FileInputStream.open(FileInputStream.java:216)
                    at java.base/java.io.FileInputStream.<init>(FileInputStream.java:157)
                        at java.base/java.io.FileInputStream.<init>(FileInputStream.java:111)
                            at java.base/sun.net.www.protocol.file.FileURLConnection.connect(FileURLConnection.java:86)
                            at java.base/sun.net.www.protocol.file.FileURLConnection.getInputStream(FileURLConnection.java:189)
                            at org.apache.catalina.startup.ExpandWar.expand(ExpandWar.java:90)
                            at org.apache.catalina.startup.ContextConfig.fixDocBase(ContextConfig.java:615)
                            at org.apache.catalina.startup.ContextConfig.beforeStart(ContextConfig.java:747)
                            at org.apache.catalina.startup.ContextConfig.lifecycleEvent(ContextConfig.java:303)
                            at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                            at org.apache.catalina.util.LifecycleBase.setStateInternal(LifecycleBase.java:423)
                            at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:182)
                            at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:717)
                            at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:690)
                            at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:705)
                            at org.apache.catalina.startup.HostConfig.deployDescriptor(HostConfig.java:631)
                            at org.apache.catalina.startup.HostConfig$DeployDescriptor.run(HostConfig.java:1831)
                            at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                            at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
                            at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
                            at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:123)
                            at org.apache.catalina.startup.HostConfig.deployDescriptors(HostConfig.java:526)
                            at org.apache.catalina.startup.HostConfig.deployApps(HostConfig.java:425)
                            at org.apache.catalina.startup.HostConfig.check(HostConfig.java:1620)
                            at org.apache.catalina.startup.HostConfig.lifecycleEvent(HostConfig.java:305)
                            at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                            at org.apache.catalina.core.ContainerBase.backgroundProcess(ContainerBase.java:1151)
                            at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1353)
                            at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1357)
                            at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.run(ContainerBase.java:1335)
                            at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                            at java.base/java.util.concurrent.FutureTask.runAndReset(FutureTask.java:305)
                            at java.base/java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:305)
                            at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                            at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                            at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
                            at java.base/java.lang.Thread.run(Thread.java:833)
                            05-Jan-2023 14:47:05.416 SEVERE [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor Error deploying deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml]
                            java.lang.IllegalStateException: Error starting child
                            at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:720)
                            at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:690)
                            at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:705)
                            at org.apache.catalina.startup.HostConfig.deployDescriptor(HostConfig.java:631)
                            at org.apache.catalina.startup.HostConfig$DeployDescriptor.run(HostConfig.java:1831)
                            at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                            at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
                            at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
                            at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:123)
                            at org.apache.catalina.startup.HostConfig.deployDescriptors(HostConfig.java:526)
                            at org.apache.catalina.startup.HostConfig.deployApps(HostConfig.java:425)
                            at org.apache.catalina.startup.HostConfig.check(HostConfig.java:1620)
                            at org.apache.catalina.startup.HostConfig.lifecycleEvent(HostConfig.java:305)
                            at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                            at org.apache.catalina.core.ContainerBase.backgroundProcess(ContainerBase.java:1151)
                            at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1353)
                            at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1357)
                            at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.run(ContainerBase.java:1335)
                            at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                            at java.base/java.util.concurrent.FutureTask.runAndReset(FutureTask.java:305)
                            at java.base/java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:305)
                            at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                            at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                            at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
                            at java.base/java.lang.Thread.run(Thread.java:833)
                            Caused by: org.apache.catalina.LifecycleException: Failed to start component [org.apache.catalina.webresources.StandardRoot@6b36c0b1]
                            at org.apache.catalina.util.LifecycleBase.handleSubClassException(LifecycleBase.java:440)
                            at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:198)
                            at org.apache.catalina.core.StandardContext.resourcesStart(StandardContext.java:4805)
                            at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4940)
                            at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
                            at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:717)
                            ... 24 more
                            Caused by: java.lang.IllegalArgumentException: The main resource set specified [D:\Web\git\project\final-be\BE\target\BackEnd.war] is not valid
                            at org.apache.catalina.webresources.StandardRoot.createMainResourceSet(StandardRoot.java:752)
                            at org.apache.catalina.webresources.StandardRoot.startInternal(StandardRoot.java:709)
                            at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
                            ... 28 more
                            05-Jan-2023 14:47:05.419 INFO [Catalina-utility-1] org.apache.catalina.startup.HostConfig.deployDescriptor Deployment of deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml] has finished in [12] ms
                            05-Jan-2023 14:47:09.424 INFO [mysql-cj-abandoned-connection-cleanup] org.apache.catalina.loader.WebappClassLoaderBase.checkStateForResourceLoading Illegal access: this web application instance has been stopped already. Could not load []. The following stack trace is thrown for debugging purposes as well as to attempt to terminate the thread which caused the illegal access.
                            java.lang.IllegalStateException: Illegal access: this web application instance has been stopped already. Could not load []. The following stack trace is thrown for debugging purposes as well as to attempt to terminate the thread which caused the illegal access.
                            at org.apache.catalina.loader.WebappClassLoaderBase.checkStateForResourceLoading(WebappClassLoaderBase.java:1385)
                            at org.apache.catalina.loader.WebappClassLoaderBase.getResource(WebappClassLoaderBase.java:1038)
                            at com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkThreadContextClassLoader(AbandonedConnectionCleanupThread.java:123)
                            at com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.run(AbandonedConnectionCleanupThread.java:90)
                            at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                            at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                            at java.base/java.lang.Thread.run(Thread.java:833)
                            [2023-01-05 02:47:17,723] Artifact BE:war: Artifact is being deployed, please wait...
                            05-Jan-2023 14:47:21.498 INFO [RMI TCP Connection(10)-127.0.0.1] org.apache.jasper.servlet.TldScanner.scanJars At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
                            [2023-01-05 02:47:22,115] Artifact BE:war: Artifact is deployed successfully
                            [2023-01-05 02:47:22,115] Artifact BE:war: Deploy took 4,392 milliseconds
                            hahaha
                            hahaha
                            hahaha
                            hahaha
                            hahaha
                            a
                            a
                            a
                            hahaha
                            hahaha
                            05-Jan-2023 14:55:16.623 INFO [Catalina-utility-2] org.apache.catalina.startup.HostConfig.undeploy Undeploying context []
                            05-Jan-2023 14:55:16.645 WARNING [Catalina-utility-2] org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesJdbc The web application [ROOT] registered the JDBC driver [com.mysql.cj.jdbc.Driver] but failed to unregister it when the web application was stopped. To prevent a memory leak, the JDBC Driver has been forcibly unregistered.
                            05-Jan-2023 14:55:16.647 WARNING [Catalina-utility-2] org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesThreads The web application [ROOT] appears to have started a thread named [mysql-cj-abandoned-connection-cleanup] but has failed to stop it. This is very likely to create a memory leak. Stack trace of thread:
                            java.base@17/java.lang.Object.wait(Native Method)
                            java.base@17/java.lang.ref.ReferenceQueue.remove(ReferenceQueue.java:155)
                            com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.run(AbandonedConnectionCleanupThread.java:91)
                            java.base@17/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                            java.base@17/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                            java.base@17/java.lang.Thread.run(Thread.java:833)
                            05-Jan-2023 14:55:18.270 INFO [Catalina-utility-2] org.apache.catalina.startup.HostConfig.deployDescriptor Deploying deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml]
                            05-Jan-2023 14:55:18.275 WARNING [Catalina-utility-2] org.apache.catalina.startup.HostConfig.deployDescriptor The path attribute with value [] in deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml] has been ignored
                            05-Jan-2023 14:55:18.293 SEVERE [Catalina-utility-2] org.apache.catalina.startup.ContextConfig.beforeStart Exception fixing docBase for context []
                            java.io.FileNotFoundException: D:\Web\git\project\final-be\BE\target\BackEnd.war (The system cannot find the file specified)
                            at java.base/java.io.FileInputStream.open0(Native Method)
                            at java.base/java.io.FileInputStream.open(FileInputStream.java:216)
                            at java.base/java.io.FileInputStream.<init>(FileInputStream.java:157)
                                at java.base/java.io.FileInputStream.<init>(FileInputStream.java:111)
                                    at java.base/sun.net.www.protocol.file.FileURLConnection.connect(FileURLConnection.java:86)
                                    at java.base/sun.net.www.protocol.file.FileURLConnection.getInputStream(FileURLConnection.java:189)
                                    at org.apache.catalina.startup.ExpandWar.expand(ExpandWar.java:90)
                                    at org.apache.catalina.startup.ContextConfig.fixDocBase(ContextConfig.java:615)
                                    at org.apache.catalina.startup.ContextConfig.beforeStart(ContextConfig.java:747)
                                    at org.apache.catalina.startup.ContextConfig.lifecycleEvent(ContextConfig.java:303)
                                    at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                                    at org.apache.catalina.util.LifecycleBase.setStateInternal(LifecycleBase.java:423)
                                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:182)
                                    at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:717)
                                    at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:690)
                                    at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:705)
                                    at org.apache.catalina.startup.HostConfig.deployDescriptor(HostConfig.java:631)
                                    at org.apache.catalina.startup.HostConfig$DeployDescriptor.run(HostConfig.java:1831)
                                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                                    at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
                                    at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
                                    at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:123)
                                    at org.apache.catalina.startup.HostConfig.deployDescriptors(HostConfig.java:526)
                                    at org.apache.catalina.startup.HostConfig.deployApps(HostConfig.java:425)
                                    at org.apache.catalina.startup.HostConfig.check(HostConfig.java:1620)
                                    at org.apache.catalina.startup.HostConfig.lifecycleEvent(HostConfig.java:305)
                                    at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                                    at org.apache.catalina.core.ContainerBase.backgroundProcess(ContainerBase.java:1151)
                                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1353)
                                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1357)
                                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.run(ContainerBase.java:1335)
                                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                                    at java.base/java.util.concurrent.FutureTask.runAndReset(FutureTask.java:305)
                                    at java.base/java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:305)
                                    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                                    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                                    at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
                                    at java.base/java.lang.Thread.run(Thread.java:833)
                                    05-Jan-2023 14:55:18.298 SEVERE [Catalina-utility-2] org.apache.catalina.startup.HostConfig.deployDescriptor Error deploying deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml]
                                    java.lang.IllegalStateException: Error starting child
                                    at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:720)
                                    at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:690)
                                    at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:705)
                                    at org.apache.catalina.startup.HostConfig.deployDescriptor(HostConfig.java:631)
                                    at org.apache.catalina.startup.HostConfig$DeployDescriptor.run(HostConfig.java:1831)
                                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                                    at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
                                    at org.apache.tomcat.util.threads.InlineExecutorService.execute(InlineExecutorService.java:75)
                                    at java.base/java.util.concurrent.AbstractExecutorService.submit(AbstractExecutorService.java:123)
                                    at org.apache.catalina.startup.HostConfig.deployDescriptors(HostConfig.java:526)
                                    at org.apache.catalina.startup.HostConfig.deployApps(HostConfig.java:425)
                                    at org.apache.catalina.startup.HostConfig.check(HostConfig.java:1620)
                                    at org.apache.catalina.startup.HostConfig.lifecycleEvent(HostConfig.java:305)
                                    at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:123)
                                    at org.apache.catalina.core.ContainerBase.backgroundProcess(ContainerBase.java:1151)
                                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1353)
                                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.processChildren(ContainerBase.java:1357)
                                    at org.apache.catalina.core.ContainerBase$ContainerBackgroundProcessor.run(ContainerBase.java:1335)
                                    at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:539)
                                    at java.base/java.util.concurrent.FutureTask.runAndReset(FutureTask.java:305)
                                    at java.base/java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:305)
                                    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                                    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                                    at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
                                    at java.base/java.lang.Thread.run(Thread.java:833)
                                    Caused by: org.apache.catalina.LifecycleException: Failed to start component [org.apache.catalina.webresources.StandardRoot@56da408a]
                                    at org.apache.catalina.util.LifecycleBase.handleSubClassException(LifecycleBase.java:440)
                                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:198)
                                    at org.apache.catalina.core.StandardContext.resourcesStart(StandardContext.java:4805)
                                    at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:4940)
                                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
                                    at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:717)
                                    ... 24 more
                                    Caused by: java.lang.IllegalArgumentException: The main resource set specified [D:\Web\git\project\final-be\BE\target\BackEnd.war] is not valid
                                    at org.apache.catalina.webresources.StandardRoot.createMainResourceSet(StandardRoot.java:752)
                                    at org.apache.catalina.webresources.StandardRoot.startInternal(StandardRoot.java:709)
                                    at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:183)
                                    ... 28 more
                                    05-Jan-2023 14:55:18.304 INFO [Catalina-utility-2] org.apache.catalina.startup.HostConfig.deployDescriptor Deployment of deployment descriptor [C:\Users\LENOVO\AppData\Local\JetBrains\IntelliJIdea2022.3\tomcat\1ce17625-344e-405f-844d-7f944e443286\conf\Catalina\localhost\ROOT.xml] has finished in [35] ms
                                    05-Jan-2023 14:55:19.934 INFO [mysql-cj-abandoned-connection-cleanup] org.apache.catalina.loader.WebappClassLoaderBase.checkStateForResourceLoading Illegal access: this web application instance has been stopped already. Could not load []. The following stack trace is thrown for debugging purposes as well as to attempt to terminate the thread which caused the illegal access.
                                    java.lang.IllegalStateException: Illegal access: this web application instance has been stopped already. Could not load []. The following stack trace is thrown for debugging purposes as well as to attempt to terminate the thread which caused the illegal access.
                                    at org.apache.catalina.loader.WebappClassLoaderBase.checkStateForResourceLoading(WebappClassLoaderBase.java:1385)
                                    at org.apache.catalina.loader.WebappClassLoaderBase.getResource(WebappClassLoaderBase.java:1038)
                                    at com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkThreadContextClassLoader(AbandonedConnectionCleanupThread.java:123)
                                    at com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.run(AbandonedConnectionCleanupThread.java:90)
                                    at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1136)
                                    at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:635)
                                    at java.base/java.lang.Thread.run(Thread.java:833)
                                    [2023-01-05 02:55:33,911] Artifact BE:war: Artifact is being deployed, please wait...
                                    05-Jan-2023 14:55:37.907 INFO [RMI TCP Connection(13)-127.0.0.1] org.apache.jasper.servlet.TldScanner.scanJars At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
                                    [2023-01-05 02:55:38,441] Artifact BE:war: Artifact is deployed successfully
                                    [2023-01-05 02:55:38,441] Artifact BE:war: Deploy took 4,530 milliseconds
        </script>
        <script>

        </script>
</body>

</html>