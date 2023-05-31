.class final Lcom/anythink/core/b/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/a/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/e;)V
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/anythink/core/b/a/e$1;->a:Lcom/anythink/core/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/a/e$1;->a:Lcom/anythink/core/b/a/e;

    invoke-static {v0}, Lcom/anythink/core/b/a/e;->a(Lcom/anythink/core/b/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->a(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_64

    .line 261
    :try_start_9
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 262
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 263
    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/anythink/core/b/a/e$1;->a:Lcom/anythink/core/b/a/e;

    invoke-static {v5}, Lcom/anythink/core/b/a/e;->a(Lcom/anythink/core/b/a/e;)Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 268
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-static {v0}, Lcom/anythink/core/b/g/c;->a(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4a

    .line 282
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    .line 275
    :try_start_4b
    new-instance v0, Lcom/anythink/core/b/a/a;

    invoke-direct {v0}, Lcom/anythink/core/b/a/a;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/b/a/e$1;->a:Lcom/anythink/core/b/a/e;

    invoke-static {v1}, Lcom/anythink/core/b/a/e;->a(Lcom/anythink/core/b/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/a$a;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/anythink/core/b/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->a(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_61} :catch_62

    goto :goto_49

    :catch_62
    move-exception v0

    goto :goto_49

    .line 282
    :catch_64
    move-exception v0

    goto :goto_49
.end method
