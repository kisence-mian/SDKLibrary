.class final Lcom/kwad/sdk/crash/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/crash/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/crash/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/crash/d;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    return-void
.end method
