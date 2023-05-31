.class public Lcom/kwai/filedownloader/h0/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but the download service isn\'t connected yet."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nYou can use FileDownloader#isServiceConnected() to check whether the service has been connected, \nbesides you can use following functions easier to control your requestHttpCode invoke after the service has been connected: \n1. FileDownloader#bindService(Runnable)\n2. FileDownloader#insureServiceBind()\n3. FileDownloader#insureServiceBindAsync()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/kwai/filedownloader/h0/a;

    invoke-static {v1, v0, p1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(I)Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "request clear the task[%d] data in the database"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "request start the task([%s], [%s], [%B]) in the download service"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public static b(I)B
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "request get the status for the task[%d] in the download service"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static c(I)Z
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "request pause the task[%d] in the download service"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
