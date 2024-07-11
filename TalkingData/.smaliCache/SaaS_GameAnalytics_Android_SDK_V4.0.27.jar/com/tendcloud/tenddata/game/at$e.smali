.class public Lcom/tendcloud/tenddata/game/at$e;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public responseMsg:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 704
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    .line 705
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput p1, p0, Lcom/tendcloud/tenddata/game/at$e;->statusCode:I

    .line 700
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/at$e;->responseMsg:Ljava/lang/String;

    .line 701
    return-void
.end method


# virtual methods
.method public getResponseMsg()Ljava/lang/String;
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/at$e;->responseMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 708
    iget v0, p0, Lcom/tendcloud/tenddata/game/at$e;->statusCode:I

    return v0
.end method
