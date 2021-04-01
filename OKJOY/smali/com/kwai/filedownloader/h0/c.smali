.class public Lcom/kwai/filedownloader/h0/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/h0/c$b;,
        Lcom/kwai/filedownloader/h0/c$e;,
        Lcom/kwai/filedownloader/h0/c$c;,
        Lcom/kwai/filedownloader/h0/c$a;,
        Lcom/kwai/filedownloader/h0/c$d;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/h0/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/kwai/filedownloader/h0/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(IJLjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/y;)Z
    .registers 9

    if-eqz p4, :cond_1c

    if-eqz p3, :cond_1c

    invoke-interface {p5, p3, p0}, Lcom/kwai/filedownloader/y;->a(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v1

    new-instance v2, Lcom/kwai/filedownloader/exception/PathConflictException;

    invoke-direct {v2, v0, p3, p4}, Lcom/kwai/filedownloader/exception/PathConflictException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v2}, Lcom/kwai/filedownloader/message/f;->a(IJLjava/lang/Throwable;)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static a(ILcom/kwai/filedownloader/f0/c;Lcom/kwai/filedownloader/y;Z)Z
    .registers 11

    invoke-interface {p2, p1}, Lcom/kwai/filedownloader/y;->a(Lcom/kwai/filedownloader/f0/c;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->k()J

    move-result-wide v4

    move v1, p0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/kwai/filedownloader/message/f;->a(IJJZ)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static a(ILjava/lang/String;ZZ)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-eqz p1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/kwai/filedownloader/message/e;->a()Lcom/kwai/filedownloader/message/e;

    move-result-object v0

    invoke-static {p0, v1, p3}, Lcom/kwai/filedownloader/message/f;->a(ILjava/io/File;Z)Lcom/kwai/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/message/e;->a(Lcom/kwai/filedownloader/message/MessageSnapshot;)V

    const/4 v0, 0x1

    goto :goto_3
.end method
