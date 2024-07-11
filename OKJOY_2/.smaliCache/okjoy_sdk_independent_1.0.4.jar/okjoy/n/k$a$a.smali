.class public Lokjoy/n/k$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/n/k$a;->onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/n/k$a;


# direct methods
.method public constructor <init>(Lokjoy/n/k$a;)V
    .registers 2

    iput-object p1, p0, Lokjoy/n/k$a$a;->a:Lokjoy/n/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lokjoy/n/k$a$a;->a:Lokjoy/n/k$a;

    iget-object v1, v0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    iget-object v0, v0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    .line 1
    invoke-virtual {v1, v0}, Lokjoy/n/k;->c(Ljava/lang/String;)V

    return-void
.end method
