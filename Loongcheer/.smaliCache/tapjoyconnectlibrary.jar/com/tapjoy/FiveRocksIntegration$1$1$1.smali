.class final Lcom/tapjoy/FiveRocksIntegration$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJActionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/FiveRocksIntegration$1$1;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/FiveRocksIntegration$1$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/FiveRocksIntegration$1$1;Ljava/lang/String;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/tapjoy/FiveRocksIntegration$1$1$1;->b:Lcom/tapjoy/FiveRocksIntegration$1$1;

    iput-object p2, p0, Lcom/tapjoy/FiveRocksIntegration$1$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelled()V
    .registers 1

    .line 120
    return-void
.end method

.method public final completed()V
    .registers 1

    .line 116
    return-void
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/tapjoy/FiveRocksIntegration$1$1$1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .registers 2

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method
