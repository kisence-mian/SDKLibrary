.class public Lcom/loongcheer/interactivesdk/bean/CocosResultBaseBean;
.super Ljava/lang/Object;
.source "CocosResultBaseBean.java"


# instance fields
.field private sign:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosResultBaseBean;->type:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/loongcheer/interactivesdk/bean/CocosResultBaseBean;->sign:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getSign()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/CocosResultBaseBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/loongcheer/interactivesdk/bean/CocosResultBaseBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2
    .param p1, "sign"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosResultBaseBean;->sign:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/loongcheer/interactivesdk/bean/CocosResultBaseBean;->type:Ljava/lang/String;

    .line 14
    return-void
.end method
