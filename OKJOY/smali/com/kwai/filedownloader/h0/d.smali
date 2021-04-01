.class public Lcom/kwai/filedownloader/h0/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z


# direct methods
.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDownloader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static varargs a(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/kwai/filedownloader/h0/d;->a(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs a(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x5

    if-lt p0, v0, :cond_b

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_d

    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-nez v0, :cond_d

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    invoke-static {p1}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/kwai/filedownloader/h0/d;->a(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2, p3}, Lcom/kwai/filedownloader/h0/d;->a(ILjava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/kwai/filedownloader/h0/d;->a(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/kwai/filedownloader/h0/d;->a(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/kwai/filedownloader/h0/d;->a(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/kwai/filedownloader/h0/d;->a(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
