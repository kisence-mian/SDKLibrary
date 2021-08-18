.class public final enum Landroid/support/v4/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 94
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 98
    new-instance v1, Landroid/support/v4/content/ModernAsyncTask$Status;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 102
    new-instance v3, Landroid/support/v4/content/ModernAsyncTask$Status;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    .line 90
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/support/v4/content/ModernAsyncTask$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Landroid/support/v4/content/ModernAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/content/ModernAsyncTask$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 90
    const-class v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Landroid/support/v4/content/ModernAsyncTask$Status;
    .registers 1

    .line 90
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Landroid/support/v4/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/content/ModernAsyncTask$Status;

    return-object v0
.end method
