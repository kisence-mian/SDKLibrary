.class public Lcom/anythink/network/sigmob/SigmobATInitManager$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field static final a:Lcom/anythink/network/sigmob/SigmobATInitManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 289
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATInitManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;-><init>(B)V

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATInitManager$Holder;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
