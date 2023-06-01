.class public Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UnityBackHolder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->a:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->b:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_26

    :cond_1d
    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_26
    :goto_26
    const/4 p1, 0x0

    return p1
.end method
