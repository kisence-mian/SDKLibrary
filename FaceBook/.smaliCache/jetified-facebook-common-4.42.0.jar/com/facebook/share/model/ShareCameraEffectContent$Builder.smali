.class public final Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareCameraEffectContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareCameraEffectContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareCameraEffectContent;",
        "Lcom/facebook/share/model/ShareCameraEffectContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private arguments:Lcom/facebook/share/model/CameraEffectArguments;

.field private effectId:Ljava/lang/String;

.field private textures:Lcom/facebook/share/model/CameraEffectTextures;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    .line 109
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->effectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectArguments;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    .line 109
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectTextures;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    .line 109
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareCameraEffectContent;
    .registers 3

    .line 158
    new-instance v0, Lcom/facebook/share/model/ShareCameraEffectContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareCameraEffectContent;-><init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;Lcom/facebook/share/model/ShareCameraEffectContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->build()Lcom/facebook/share/model/ShareCameraEffectContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareCameraEffectContent;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareCameraEffectContent;

    .line 163
    if-nez p1, :cond_3

    .line 164
    return-object p0

    .line 167
    :cond_3
    nop

    .line 168
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    iget-object v1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->effectId:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->setEffectId(Ljava/lang/String;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    .line 170
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->setArguments(Lcom/facebook/share/model/CameraEffectArguments;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2

    .line 109
    check-cast p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->readFrom(Lcom/facebook/share/model/ShareCameraEffectContent;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 109
    check-cast p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->readFrom(Lcom/facebook/share/model/ShareCameraEffectContent;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setArguments(Lcom/facebook/share/model/CameraEffectArguments;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .registers 2
    .param p1, "arguments"    # Lcom/facebook/share/model/CameraEffectArguments;

    .line 135
    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    .line 136
    return-object p0
.end method

.method public setEffectId(Ljava/lang/String;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .registers 2
    .param p1, "effectId"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->effectId:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setTextures(Lcom/facebook/share/model/CameraEffectTextures;)Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    .registers 2
    .param p1, "textures"    # Lcom/facebook/share/model/CameraEffectTextures;

    .line 146
    iput-object p1, p0, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    .line 147
    return-object p0
.end method
