.class public Lcom/tapjoy/TapjoyErrorMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .param p2, "message"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tapjoy/TapjoyErrorMessage;->a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 20
    iput-object p2, p0, Lcom/tapjoy/TapjoyErrorMessage;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getType()Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/tapjoy/TapjoyErrorMessage;->a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyErrorMessage;->a:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ";Message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyErrorMessage;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
