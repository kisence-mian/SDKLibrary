.class public Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;
.super Ljava/lang/Object;
.source "AuthorizationBackEvent.java"


# instance fields
.field private authorizationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;->authorizationType:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;->authorizationType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthorizationType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;->authorizationType:Ljava/lang/String;

    return-object v0
.end method
