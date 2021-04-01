.class final Lcom/mintegral/msdk/mtgnative/c/b$14;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/mtgnative/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2727
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$14;->c:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$14;->a:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    iput-object p3, p0, Lcom/mintegral/msdk/mtgnative/c/b$14;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$14;->a:Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$14;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdLoadError(Ljava/lang/String;)V

    .line 2732
    return-void
.end method
