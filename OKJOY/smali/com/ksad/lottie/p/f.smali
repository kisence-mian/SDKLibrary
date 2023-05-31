.class public Lcom/ksad/lottie/p/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final b:Lcom/ksad/lottie/p/f;


# instance fields
.field private final a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/p/f;

    invoke-direct {v0}, Lcom/ksad/lottie/p/f;-><init>()V

    sput-object v0, Lcom/ksad/lottie/p/f;->b:Lcom/ksad/lottie/p/f;

    return-void
.end method

.method constructor <init>()V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/p/f;->a:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public static a()Lcom/ksad/lottie/p/f;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/p/f;->b:Lcom/ksad/lottie/p/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ksad/lottie/d;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/ksad/lottie/p/f;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/d;

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Lcom/ksad/lottie/d;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ksad/lottie/p/f;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
