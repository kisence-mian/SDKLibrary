.class interface abstract Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;
.super Ljava/lang/Object;
.source "BaseDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/BaseDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "mergeFinishCallback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/tds/achievement/AchievementException;)V
.end method

.method public abstract onMergeFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)V"
        }
    .end annotation
.end method
