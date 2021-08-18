.class Landroid/support/v4/widget/TextViewCompatDonut;
.super Ljava/lang/Object;
.source "TextViewCompatDonut.java"


# static fields
.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompatDonut"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxLines(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 40
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 41
    const-string v0, "mMaxMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 42
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeFieldFetched:Z

    .line 44
    :cond_f
    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_30

    .line 46
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumFieldFetched:Z

    if-nez v0, :cond_27

    .line 47
    const-string v0, "mMaximum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumField:Ljava/lang/reflect/Field;

    .line 48
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumFieldFetched:Z

    .line 50
    :cond_27
    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 51
    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 54
    :cond_30
    const/4 v0, -0x1

    return v0
.end method

.method static getMinLines(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 58
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeFieldFetched:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 59
    const-string v0, "mMinMode"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeField:Ljava/lang/reflect/Field;

    .line 60
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeFieldFetched:Z

    .line 62
    :cond_f
    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v1, :cond_30

    .line 64
    sget-boolean v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumFieldFetched:Z

    if-nez v0, :cond_27

    .line 65
    const-string v0, "mMinimum"

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumField:Ljava/lang/reflect/Field;

    .line 66
    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumFieldFetched:Z

    .line 68
    :cond_27
    sget-object v0, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    .line 69
    invoke-static {v0, p0}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    return v0

    .line 72
    :cond_30
    const/4 v0, -0x1

    return v0
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_c} :catch_d

    .line 82
    goto :goto_2c

    .line 80
    :catch_d
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextViewCompatDonut"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_2c
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .registers 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 89
    :catch_5
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextViewCompatDonut"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    const/4 v0, -0x1

    return v0
.end method

.method static setTextAppearance(Landroid/widget/TextView;I)V
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "resId"    # I

    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 97
    return-void
.end method
