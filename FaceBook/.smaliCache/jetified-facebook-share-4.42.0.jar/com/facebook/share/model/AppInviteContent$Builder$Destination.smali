.class public final enum Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
.super Ljava/lang/Enum;
.source "AppInviteContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Destination"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/model/AppInviteContent$Builder$Destination;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

.field public static final enum FACEBOOK:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

.field public static final enum MESSENGER:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 174
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    const-string v1, "FACEBOOK"

    const/4 v2, 0x0

    const-string v3, "facebook"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->FACEBOOK:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 175
    new-instance v1, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    const-string v3, "MESSENGER"

    const/4 v4, 0x1

    const-string v5, "messenger"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->MESSENGER:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 172
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->$VALUES:[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput-object p3, p0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->name:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 172
    const-class v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .registers 1

    .line 172
    sget-object v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->$VALUES:[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    invoke-virtual {v0}, [Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "otherName"    # Ljava/lang/String;

    .line 184
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->name:Ljava/lang/String;

    return-object v0
.end method
