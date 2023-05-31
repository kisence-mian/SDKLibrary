.class public final enum Ltds/androidx/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltds/androidx/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltds/androidx/annotation/RestrictTo$Scope;

.field public static final enum GROUP_ID:Ltds/androidx/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Ltds/androidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Ltds/androidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP_PREFIX:Ltds/androidx/annotation/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Ltds/androidx/annotation/RestrictTo$Scope;

.field public static final enum TESTS:Ltds/androidx/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 49
    new-instance v0, Ltds/androidx/annotation/RestrictTo$Scope;

    const-string v1, "LIBRARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltds/androidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltds/androidx/annotation/RestrictTo$Scope;->LIBRARY:Ltds/androidx/annotation/RestrictTo$Scope;

    .line 55
    new-instance v1, Ltds/androidx/annotation/RestrictTo$Scope;

    const-string v3, "LIBRARY_GROUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltds/androidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltds/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Ltds/androidx/annotation/RestrictTo$Scope;

    .line 69
    new-instance v3, Ltds/androidx/annotation/RestrictTo$Scope;

    const-string v5, "LIBRARY_GROUP_PREFIX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltds/androidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltds/androidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Ltds/androidx/annotation/RestrictTo$Scope;

    .line 77
    new-instance v5, Ltds/androidx/annotation/RestrictTo$Scope;

    const-string v7, "GROUP_ID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ltds/androidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ltds/androidx/annotation/RestrictTo$Scope;->GROUP_ID:Ltds/androidx/annotation/RestrictTo$Scope;

    .line 83
    new-instance v7, Ltds/androidx/annotation/RestrictTo$Scope;

    const-string v9, "TESTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ltds/androidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ltds/androidx/annotation/RestrictTo$Scope;->TESTS:Ltds/androidx/annotation/RestrictTo$Scope;

    .line 91
    new-instance v9, Ltds/androidx/annotation/RestrictTo$Scope;

    const-string v11, "SUBCLASSES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ltds/androidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ltds/androidx/annotation/RestrictTo$Scope;->SUBCLASSES:Ltds/androidx/annotation/RestrictTo$Scope;

    .line 44
    const/4 v11, 0x6

    new-array v11, v11, [Ltds/androidx/annotation/RestrictTo$Scope;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ltds/androidx/annotation/RestrictTo$Scope;->$VALUES:[Ltds/androidx/annotation/RestrictTo$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltds/androidx/annotation/RestrictTo$Scope;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Ltds/androidx/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltds/androidx/annotation/RestrictTo$Scope;

    return-object v0
.end method

.method public static values()[Ltds/androidx/annotation/RestrictTo$Scope;
    .registers 1

    .line 44
    sget-object v0, Ltds/androidx/annotation/RestrictTo$Scope;->$VALUES:[Ltds/androidx/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Ltds/androidx/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltds/androidx/annotation/RestrictTo$Scope;

    return-object v0
.end method
