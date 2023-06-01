.class Lcom/ssjj/fnsdk/core/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    const-string p1, "sy\u4e0a\u4f20\u6fc0\u6d3b\u7801\u6210\u529f"

    goto :goto_8

    :cond_6
    const-string p1, "sy\u4e0a\u4f20\u6fc0\u6d3b\u7801\u5931\u8d25"

    :goto_8
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
