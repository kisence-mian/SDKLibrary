.class Lcom/bytedance/embedapplog/q$a;
.super Lcom/bytedance/embedapplog/ba;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Lcom/bytedance/embedapplog/ba;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/embedapplog/q$1;)V
    .registers 2

    .line 252
    invoke-direct {p0}, Lcom/bytedance/embedapplog/q$a;-><init>()V

    return-void
.end method
