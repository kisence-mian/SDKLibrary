.class public Lcom/kwad/sdk/c/e/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/e/a$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = ""


# direct methods
.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/kwad/sdk/c/e/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/c/e/a$b;)V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/c/e/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p1, :cond_f

    sget-object v0, Lcom/kwad/sdk/c/e/a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/c/e/a$b;->a(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-nez p0, :cond_1a

    if-eqz p1, :cond_f

    sget-object v0, Lcom/kwad/sdk/c/e/a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/c/e/a$b;->a(Ljava/lang/String;)V

    goto :goto_f

    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/kwad/sdk/c/e/a$a;

    invoke-direct {v2, v0, p1}, Lcom/kwad/sdk/c/e/a$a;-><init>(Landroid/content/Context;Lcom/kwad/sdk/c/e/a$b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_f
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/c/e/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/e/a;->a(Landroid/content/Context;Lcom/kwad/sdk/c/e/a$b;)V

    :cond_10
    sget-object v0, Lcom/kwad/sdk/c/e/a;->a:Ljava/lang/String;

    return-object v0
.end method
