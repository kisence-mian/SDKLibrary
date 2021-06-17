.class public Lcom/umeng/commonsdk/internal/crash/a;
.super Ljava/lang/Object;
.source "UMCrashUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 14
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 15
    return-object v0

    .line 18
    :cond_4
    nop

    .line 21
    :try_start_5
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 22
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 25
    :goto_16
    if-eqz p0, :cond_20

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_16

    .line 29
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 31
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 34
    goto :goto_2c

    .line 32
    :catch_2b
    move-exception p0

    .line 35
    :goto_2c
    return-object v0
.end method
