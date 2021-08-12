.class public Lcom/google/gson/internal/PreJava9DateFormatProvider;
.super Ljava/lang/Object;
.source "PreJava9DateFormatProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDateFormatPattern(I)Ljava/lang/String;
    .registers 4
    .param p0, "style"    # I

    .line 44
    packed-switch p0, :pswitch_data_28

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DateFormat style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_1c
    const-string v0, "M/d/yy"

    return-object v0

    .line 48
    :pswitch_1f
    const-string v0, "MMM d, y"

    return-object v0

    .line 50
    :pswitch_22
    const-string v0, "MMMM d, y"

    return-object v0

    .line 52
    :pswitch_25
    const-string v0, "EEEE, MMMM d, y"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static getDatePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 4
    .param p0, "dateStyle"    # I

    .line 59
    packed-switch p0, :pswitch_data_28

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DateFormat style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_1c
    const-string v0, "M/d/yy"

    return-object v0

    .line 63
    :pswitch_1f
    const-string v0, "MMM d, yyyy"

    return-object v0

    .line 65
    :pswitch_22
    const-string v0, "MMMM d, yyyy"

    return-object v0

    .line 67
    :pswitch_25
    const-string v0, "EEEE, MMMM d, yyyy"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private static getTimePartOfDateTimePattern(I)Ljava/lang/String;
    .registers 4
    .param p0, "timeStyle"    # I

    .line 74
    packed-switch p0, :pswitch_data_26

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DateFormat style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_1c
    const-string v0, "h:mm a"

    return-object v0

    .line 78
    :pswitch_1f
    const-string v0, "h:mm:ss a"

    return-object v0

    .line 81
    :pswitch_22
    const-string v0, "h:mm:ss a z"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static getUSDateFormat(I)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDateFormatPattern(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getUSDateTimeFormat(II)Ljava/text/DateFormat;
    .registers 5
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getDatePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/gson/internal/PreJava9DateFormatProvider;->getTimePartOfDateTimePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method
