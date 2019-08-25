.class public final Lcom/oneplus/aod/DateTimeView$Patterns;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Patterns"
.end annotation


# static fields
.field static clockView12:Ljava/lang/String;

.field static clockView24:Ljava/lang/String;

.field static dateView:Ljava/lang/String;


# direct methods
.method static update(Landroid/content/Context;ZI)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasAlarm"    # Z
    .param p2, "clockStyle"    # I

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 177
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 179
    const v2, 0x7f11000b

    goto :goto_0

    .line 180
    :cond_0
    const v2, 0x7f11000a

    .line 178
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "dateViewSkel":Ljava/lang/String;
    const v3, 0x7f1101e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "clockView12Skel":Ljava/lang/String;
    const v4, 0x7f1101e3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "clockView24Skel":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->dateView:Ljava/lang/String;

    .line 195
    const-string v5, "hh:mm"

    sput-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 200
    const-string v5, "a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    sget-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    const-string v6, "a"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 204
    :cond_1
    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    .line 205
    const-string v5, "DateTimeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateClockPattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-nez p2, :cond_2

    .line 208
    sget-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    const/16 v6, 0x20

    const/16 v7, 0x3a

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    .line 209
    sget-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 212
    :cond_2
    const-string v5, "DateTimeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update clockView12: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " clockView24:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method
