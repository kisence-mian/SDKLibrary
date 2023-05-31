.class public interface abstract Lcom/bytedance/applog/IOaidObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/IOaidObserver$Oaid;
    }
.end annotation


# virtual methods
.method public abstract onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V
    .param p1    # Lcom/bytedance/applog/IOaidObserver$Oaid;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation
.end method
