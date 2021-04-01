.class public Lcom/sigmob/windad/consent/ServerResponse;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/consent/ServerResponse;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getIsRequestInEeaOrUnknown()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/consent/ServerResponse;->a:Ljava/lang/Boolean;

    return-object v0
.end method
