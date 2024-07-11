.class public Lcom/efs/sdk/base/protocol/file/section/JSONSection;
.super Lcom/efs/sdk/base/protocol/file/section/AbsSection;
.source "SourceFile"


# instance fields
.field private body:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 16
    const-string v0, "json"

    invoke-direct {p0, v0}, Lcom/efs/sdk/base/protocol/file/section/AbsSection;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/section/JSONSection;->name:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public changeToStr()Ljava/lang/String;
    .registers 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/efs/sdk/base/protocol/file/section/JSONSection;->getDeclarationLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/efs/sdk/base/protocol/file/section/JSONSection;->body:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/efs/sdk/base/protocol/file/section/JSONSection;->body:Ljava/lang/String;

    .line 23
    return-void
.end method
