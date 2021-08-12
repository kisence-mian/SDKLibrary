.class public final Lcom/ksad/download/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/io/File;

.field private static c:Lcom/ksad/download/a;


# direct methods
.method public static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/ksad/download/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ksad/download/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/ksad/download/a;)V
    .registers 1

    sput-object p0, Lcom/ksad/download/b;->c:Lcom/ksad/download/a;

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 1

    sput-object p0, Lcom/ksad/download/b;->b:Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/ksad/download/b;->c:Lcom/ksad/download/a;

    invoke-static {}, Lcom/ksad/download/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ksad/download/a;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/ksad/download/b;->b:Ljava/io/File;

    return-object v0
.end method
