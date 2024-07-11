.class public abstract Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
.super Ljava/lang/Object;
.source "ShareMessengerActionButton.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/facebook/share/model/ShareMessengerActionButton;",
        "B:",
        "Lcom/facebook/share/model/ShareMessengerActionButton$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "TM;TB;>;"
    }
.end annotation


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    .local p0, "this":Lcom/facebook/share/model/ShareMessengerActionButton$Builder;, "Lcom/facebook/share/model/ShareMessengerActionButton$Builder<TM;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerActionButton$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMessengerActionButton$Builder;

    .line 61
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->title:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public readFrom(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TB;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/facebook/share/model/ShareMessengerActionButton$Builder;, "Lcom/facebook/share/model/ShareMessengerActionButton$Builder<TM;TB;>;"
    .local p1, "model":Lcom/facebook/share/model/ShareMessengerActionButton;, "TM;"
    if-nez p1, :cond_3

    .line 76
    return-object p0

    .line 78
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerActionButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerActionButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 61
    .local p0, "this":Lcom/facebook/share/model/ShareMessengerActionButton$Builder;, "Lcom/facebook/share/model/ShareMessengerActionButton$Builder<TM;TB;>;"
    check-cast p1, Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerActionButton$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/facebook/share/model/ShareMessengerActionButton$Builder;, "Lcom/facebook/share/model/ShareMessengerActionButton$Builder<TM;TB;>;"
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->title:Ljava/lang/String;

    .line 70
    return-object p0
.end method
