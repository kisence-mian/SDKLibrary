.class final Lcom/mintegral/msdk/mtgdownload/k$3;
.super Ljava/lang/Object;
.source "WorkThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgdownload/k;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/k;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/k$3;->a:Lcom/mintegral/msdk/mtgdownload/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/k;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 440
    return-void
.end method
