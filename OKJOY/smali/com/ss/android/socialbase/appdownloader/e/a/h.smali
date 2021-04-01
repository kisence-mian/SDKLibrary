.class public Lcom/ss/android/socialbase/appdownloader/e/a/h;
.super Ljava/lang/Exception;
.source "XmlPullParserException.java"


# instance fields
.field protected a:Ljava/lang/Throwable;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/e/a/g;Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_3a

    const-string v0, ""

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_4e

    const-string v0, ""

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_6c

    const-string v0, ""

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/e/a/h;->b:I

    .line 11
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/e/a/h;->c:I

    .line 19
    if-eqz p2, :cond_37

    .line 20
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/e/a/g;->c()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/h;->b:I

    .line 21
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/e/a/g;->f()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/h;->c:I

    .line 24
    :cond_37
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/e/a/h;->a:Ljava/lang/Throwable;

    .line 25
    return-void

    .line 18
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/e/a/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caused by: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method


# virtual methods
.method public printStackTrace()V
    .registers 5

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/h;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    .line 29
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_7
    return-void

    .line 31
    :cond_8
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    monitor-enter v1

    .line 32
    :try_start_b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; nested exception is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/h;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    monitor-exit v1

    goto :goto_7

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw v0
.end method
