.class Lcom/tds/common/reactor/RxBus$Holder;
.super Ljava/lang/Object;
.source "RxBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/RxBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/tds/common/reactor/RxBus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/tds/common/reactor/RxBus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/RxBus;-><init>(Lcom/tds/common/reactor/RxBus$1;)V

    sput-object v0, Lcom/tds/common/reactor/RxBus$Holder;->INSTANCE:Lcom/tds/common/reactor/RxBus;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
