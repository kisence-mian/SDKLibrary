.class public final Lcom/anythink/nativead/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/a/c$a;
    }
.end annotation


# static fields
.field private static d:Lcom/anythink/nativead/a/c;


# instance fields
.field a:Landroid/os/Handler;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/nativead/a/c;->a:Landroid/os/Handler;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/nativead/a/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/anythink/nativead/a/c;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/anythink/nativead/a/c;->d:Lcom/anythink/nativead/a/c;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/anythink/nativead/a/c;

    invoke-direct {v0}, Lcom/anythink/nativead/a/c;-><init>()V

    sput-object v0, Lcom/anythink/nativead/a/c;->d:Lcom/anythink/nativead/a/c;

    .line 34
    :cond_b
    sget-object v0, Lcom/anythink/nativead/a/c;->d:Lcom/anythink/nativead/a/c;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {p1, p2}, Lcom/anythink/nativead/a/a/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/nativead/a/c;->c:Ljava/lang/ref/SoftReference;

    .line 130
    iget-object v0, p0, Lcom/anythink/nativead/a/c;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 134
    :goto_13
    return-object v0

    .line 132
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V
    .registers 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anythink/nativead/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 40
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p3, v0}, Lcom/anythink/nativead/a/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 125
    :goto_19
    return-void

    .line 47
    :cond_1a
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/a/c$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/nativead/a/c$1;-><init>(Lcom/anythink/nativead/a/c;Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_19
.end method
