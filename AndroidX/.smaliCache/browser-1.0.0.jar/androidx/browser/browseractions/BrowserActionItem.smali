.class public Landroidx/browser/browseractions/BrowserActionItem;
.super Ljava/lang/Object;
.source "BrowserActionItem.java"


# instance fields
.field private final mAction:Landroid/app/PendingIntent;

.field private final mIconId:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/app/PendingIntent;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/browser/browseractions/BrowserActionItem;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/app/PendingIntent;
    .param p3, "iconId"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    .line 44
    iput p3, p0, Landroidx/browser/browseractions/BrowserActionItem;->mIconId:I

    .line 45
    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .registers 2

    .line 74
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 60
    iget v0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mIconId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
