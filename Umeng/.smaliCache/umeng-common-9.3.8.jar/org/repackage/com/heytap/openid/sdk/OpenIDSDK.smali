.class public Lorg/repackage/com/heytap/openid/sdk/OpenIDSDK;
.super Ljava/lang/Object;
.source "OpenIDSDK.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Lorg/repackage/a/a/a/a/c$a;->a:Lorg/repackage/a/a/a/a/c;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/repackage/a/a/a/a/c;->a(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lorg/repackage/a/a/a/a/a;->b:Z

    .line 3
    const/4 p0, 0x1

    sput-boolean p0, Lorg/repackage/a/a/a/a/a;->a:Z

    return-void
.end method

.method public static a()Z
    .registers 2

    .line 1
    sget-boolean v0, Lorg/repackage/a/a/a/a/a;->a:Z

    if-eqz v0, :cond_7

    .line 2
    sget-boolean v0, Lorg/repackage/a/a/a/a/a;->b:Z

    return v0

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK Need Init First!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-boolean v0, Lorg/repackage/a/a/a/a/a;->a:Z

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lorg/repackage/a/a/a/a/c$a;->a:Lorg/repackage/a/a/a/a/c;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "GUID"

    invoke-virtual {v0, p0, v1}, Lorg/repackage/a/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-boolean v0, Lorg/repackage/a/a/a/a/a;->a:Z

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lorg/repackage/a/a/a/a/c$a;->a:Lorg/repackage/a/a/a/a/c;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "OUID"

    invoke-virtual {v0, p0, v1}, Lorg/repackage/a/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-boolean v0, Lorg/repackage/a/a/a/a/a;->a:Z

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lorg/repackage/a/a/a/a/c$a;->a:Lorg/repackage/a/a/a/a/c;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "DUID"

    invoke-virtual {v0, p0, v1}, Lorg/repackage/a/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-boolean v0, Lorg/repackage/a/a/a/a/a;->a:Z

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lorg/repackage/a/a/a/a/c$a;->a:Lorg/repackage/a/a/a/a/c;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, Lorg/repackage/a/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SDK Need Init First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
