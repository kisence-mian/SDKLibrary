.class Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedPreferencesWrapper"
.end annotation


# instance fields
.field private volatile mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;)Landroid/content/SharedPreferences;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$102(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils$SharedPreferencesWrapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p1
.end method
