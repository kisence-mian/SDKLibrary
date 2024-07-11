.class public Lcom/tendcloud/tenddata/game/zz$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public paraMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    return-void
.end method
