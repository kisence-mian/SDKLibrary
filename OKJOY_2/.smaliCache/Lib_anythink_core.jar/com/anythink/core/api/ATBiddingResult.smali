.class public Lcom/anythink/core/api/ATBiddingResult;
.super Lcom/anythink/core/common/d/k;


# direct methods
.method private constructor <init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 15
    invoke-direct/range {p0 .. p7}, Lcom/anythink/core/common/d/k;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;
    .registers 10

    .line 23
    new-instance v8, Lcom/anythink/core/api/ATBiddingResult;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/api/ATBiddingResult;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static success(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;
    .registers 14

    .line 19
    new-instance v8, Lcom/anythink/core/api/ATBiddingResult;

    const/4 v1, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/api/ATBiddingResult;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method
