.class public final enum Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
.super Ljava/lang/Enum;
.source "AppGroupCreationContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppGroupCreationContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppGroupPrivacy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

.field public static final enum Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

.field public static final enum Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 101
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    const-string v1, "Open"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 106
    new-instance v1, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    const-string v3, "Closed"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 97
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->$VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .registers 1

    .line 97
    sget-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->$VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    invoke-virtual {v0}, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object v0
.end method
