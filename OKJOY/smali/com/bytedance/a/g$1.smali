.class final Lcom/bytedance/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/applog/IOaidObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V
    .registers 2
    .param p1, "oaid"    # Lcom/bytedance/applog/IOaidObserver$Oaid;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-static {p1}, Lcom/bytedance/a/g;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    .line 40
    return-void
.end method
