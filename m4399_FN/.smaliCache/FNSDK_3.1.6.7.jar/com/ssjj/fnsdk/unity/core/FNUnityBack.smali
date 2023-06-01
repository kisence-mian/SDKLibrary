.class public Lcom/ssjj/fnsdk/unity/core/FNUnityBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# static fields
.field public static final KEY_API:Ljava/lang/String; = "_api_"

.field public static final KEY_ID:Ljava/lang/String; = "_id_"

.field public static final KEY_KEEP:Ljava/lang/String; = "_keep_"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->d:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->a:Ljava/lang/String;

    if-eqz p2, :cond_12

    const-string p1, "_id_"

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->b:Ljava/lang/String;

    :cond_12
    return-void
.end method


# virtual methods
.method protected a(Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->d:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;

    return-void
.end method

.method public onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 6

    const-string v0, "_keep_"

    if-eqz p3, :cond_19

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->setKeep(Z)V

    :cond_19
    new-instance v1, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;

    invoke-direct {v1, p1, p2, p3}, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;-><init>(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    const-string p1, "_api_"

    iget-object p2, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_id_"

    iget-object p2, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->c:Z

    if-eqz p1, :cond_42

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p2, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->c:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    iget-object p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->d:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;

    if-nez p1, :cond_48

    const/4 p1, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;->a()Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;

    move-result-object p1

    :goto_4c
    if-eqz p1, :cond_68

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/unity/core/FNUnityResult;->toJson()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onBack to u3d: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->a(Ljava/lang/String;)Z

    goto :goto_7c

    :cond_68
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onBack to u3d cancel, not found "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_7c
    return-void
.end method

.method public setKeep(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityBack;->c:Z

    return-void
.end method
