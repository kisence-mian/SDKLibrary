.class Lcom/bytedance/applog/a/l$a;
.super Lcom/bytedance/applog/d/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/bytedance/applog/d/j;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/applog/a/l$1;)V
    .registers 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/bytedance/applog/a/l$a;-><init>()V

    return-void
.end method
