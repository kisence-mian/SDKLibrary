.class public abstract Lcom/facebook/share/model/ShareMessengerActionButton;
.super Ljava/lang/Object;
.source "ShareMessengerActionButton.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
    }
.end annotation


# instance fields
.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareMessengerActionButton$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareMessengerActionButton$Builder;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    # getter for: Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;->access$000(Lcom/facebook/share/model/ShareMessengerActionButton$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerActionButton;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
