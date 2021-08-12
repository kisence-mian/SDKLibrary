.class public Lcom/ss/android/socialbase/appdownloader/f/a/h;
.super Ljava/lang/Exception;
.source "XmlPullParserException.java"


# instance fields
.field protected a:Ljava/lang/Throwable;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/f/a/g;Ljava/lang/Throwable;)V
    .registers 7

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_b

    move-object p1, v1

    goto :goto_1e

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_26

    move-object v0, v1

    goto :goto_43

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/f/a/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p3, :cond_4a

    goto :goto_5d

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 p1, -0x1

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/h;->b:I

    .line 11
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/h;->c:I

    .line 19
    if-eqz p2, :cond_7b

    .line 20
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/f/a/g;->c()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/h;->b:I

    .line 21
    invoke-interface {p2}, Lcom/ss/android/socialbase/appdownloader/f/a/g;->f()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/h;->c:I

    .line 24
    :cond_7b
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/h;->a:Ljava/lang/Throwable;

    .line 25
    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .registers 5

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/h;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    .line 29
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 31
    :cond_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    monitor-enter v0

    .line 32
    :try_start_b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

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

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/h;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    monitor-exit v0

    .line 36
    :goto_2d
    return-void

    .line 34
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw v1
.end method
