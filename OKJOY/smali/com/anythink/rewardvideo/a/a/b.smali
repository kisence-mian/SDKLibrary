.class public final Lcom/anythink/rewardvideo/a/a/b;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/anythink/rewardvideo/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/anythink/rewardvideo/a/a/b;

    invoke-direct {v0}, Lcom/anythink/rewardvideo/a/a/b;-><init>()V

    sput-object v0, Lcom/anythink/rewardvideo/a/a/b;->a:Lcom/anythink/rewardvideo/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;",
            ">;)",
            "Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;"
        }
    .end annotation

    .prologue
    .line 30
    if-nez p0, :cond_9

    .line 31
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "can not find adapter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 36
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_27

    .line 19
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1030
    if-nez v1, :cond_16

    .line 1031
    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v3, "can not find adapter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_16
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1035
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1036
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    .line 23
    :cond_27
    return-object v0
.end method
