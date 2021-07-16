//
//  IsenokKind.swift
//  IsenokGame
//
//  Created by Селезнев Дмитрий on 17.07.2021.
//

import Foundation
import UIKit

/// Вид Исенка
enum IsenokKind: String, CaseIterable {
    case bdCake = "BDCake"
    case cheerfulDressed = "Cheerful (dressed)"
    case cheerful = "Cheerful"
    case classySpy = "ClassySpy"
    case coach = "Coach"
    case confusedDressed = "Confused (dressed)"
    case confused = "Confused"
    case exhausted = "Exhausted"
    case graduating = "Graduating"
    case jumpsHappyDressed = "JumpsHappy (dressed)"
    case jumpsHappy = "JumpsHappy"
    case partyHornDressed = "PartyHorn (dressed)"
    case partyHorn = "PartyHorn"
    case prehistoric = "Prehistoric"
    case regular = "Regular"
    case superfox = "Superfox"
    case thumbUpDressed = "ThumbUp (dressed)"
    case thumbUp = "ThumbUp"

    /// Выдает кривую Безье для изображения исенка
    /// - Parameter frame: Размер
    /// - Returns: Кривая Безье
    func getBezierPath(for frame: CGRect) -> UIBezierPath {
        switch self {
        case .bdCake: return makeBDCakePath(frame: frame)
        case .cheerfulDressed: return makeCheerfulDressedPath(frame: frame)
        case .cheerful: return makeCheerfulPath(frame: frame)
        case .classySpy: return makeClassySpyPath(frame: frame)
        case .coach: return makeCoachPath(frame: frame)
        case .confusedDressed: return makeConfusedDressedPath(frame: frame)
        case .confused: return makeConfusedPath(frame: frame)
        case .exhausted: return makeExhaustedPath(frame: frame)
        case .graduating: return makeGraduatingPath(frame: frame)
        case .jumpsHappyDressed: return makeJumpsHappyDressedPath(frame: frame)
        case .jumpsHappy: return makeJumpsHappyPath(frame: frame)
        case .partyHornDressed: return makePartyHornDressedPath(frame: frame)
        case .partyHorn: return makePartyHornPath(frame: frame)
        case .prehistoric: return makePrehistoricPath(frame: frame)
        case .regular: return makeRegularPath(frame: frame)
        case .superfox: return makeSuperfoxPath(frame: frame)
        case .thumbUpDressed: return makeThumbUpDressedPath(frame: frame)
        case .thumbUp: return makeThumbUpPath(frame: frame)
        }
    }
}

extension IsenokKind {
    private func makeBDCakePath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.24167 * frame.width, y: frame.minY + 0.47833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.26500 * frame.width, y: frame.minY + 0.72167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.31500 * frame.width, y: frame.minY + 0.87167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.40500 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43833 * frame.width, y: frame.minY + 0.81167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.42167 * frame.width, y: frame.minY + 0.65167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39833 * frame.width, y: frame.minY + 0.55500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47167 * frame.width, y: frame.minY + 0.53500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.57500 * frame.width, y: frame.minY + 0.65167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.74167 * frame.width, y: frame.minY + 0.75833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.88500 * frame.width, y: frame.minY + 0.81167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.85500 * frame.width, y: frame.minY + 0.71833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.80500 * frame.width, y: frame.minY + 0.61500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71833 * frame.width, y: frame.minY + 0.50833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.56167 * frame.width, y: frame.minY + 0.37833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.55167 * frame.width, y: frame.minY + 0.30167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54167 * frame.width, y: frame.minY + 0.24833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39833 * frame.width, y: frame.minY + 0.24833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39833 * frame.width, y: frame.minY + 0.21500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.44833 * frame.width, y: frame.minY + 0.15833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.50833 * frame.width, y: frame.minY + 0.20833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.57500 * frame.width, y: frame.minY + 0.22500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68167 * frame.width, y: frame.minY + 0.18500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.74167 * frame.width, y: frame.minY + 0.12167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.76167 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.56167 * frame.width, y: frame.minY + 0.03833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.44833 * frame.width, y: frame.minY + 0.05833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43833 * frame.width, y: frame.minY + 0.03833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.30500 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.30500 * frame.width, y: frame.minY + 0.12167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.26500 * frame.width, y: frame.minY + 0.15833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.19500 * frame.width, y: frame.minY + 0.15833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.16167 * frame.width, y: frame.minY + 0.18500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.17167 * frame.width, y: frame.minY + 0.26500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.19500 * frame.width, y: frame.minY + 0.28500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.19500 * frame.width, y: frame.minY + 0.31500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.19500 * frame.width, y: frame.minY + 0.36500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.24167 * frame.width, y: frame.minY + 0.47833 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeCheerfulDressedPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.18167 * frame.width, y: frame.minY + 0.54167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.18167 * frame.width, y: frame.minY + 0.62833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.23167 * frame.width, y: frame.minY + 0.79833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.28833 * frame.width, y: frame.minY + 0.89500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41833 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43167 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.44500 * frame.width, y: frame.minY + 0.97167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.40833 * frame.width, y: frame.minY + 0.72833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.38500 * frame.width, y: frame.minY + 0.66167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.34500 * frame.width, y: frame.minY + 0.58167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41833 * frame.width, y: frame.minY + 0.54167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62167 * frame.width, y: frame.minY + 0.59500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.88500 * frame.width, y: frame.minY + 0.55833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.93833 * frame.width, y: frame.minY + 0.53167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.84500 * frame.width, y: frame.minY + 0.44833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68833 * frame.width, y: frame.minY + 0.37833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.49833 * frame.width, y: frame.minY + 0.36500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46833 * frame.width, y: frame.minY + 0.36500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.42500 * frame.width, y: frame.minY + 0.23833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.31167 * frame.width, y: frame.minY + 0.24833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68833 * frame.width, y: frame.minY + 0.14167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.60833 * frame.width, y: frame.minY + 0.04833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.23167 * frame.width, y: frame.minY + 0.02833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.18167 * frame.width, y: frame.minY + 0.19500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.11167 * frame.width, y: frame.minY + 0.24833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.09833 * frame.width, y: frame.minY + 0.37833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.13500 * frame.width, y: frame.minY + 0.48500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.18167 * frame.width, y: frame.minY + 0.54167 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeCheerfulPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.22833 * frame.width, y: frame.minY + 0.53833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22833 * frame.width, y: frame.minY + 0.62500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.27833 * frame.width, y: frame.minY + 0.79500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.33500 * frame.width, y: frame.minY + 0.89167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46500 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47833 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.49167 * frame.width, y: frame.minY + 0.96833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.45500 * frame.width, y: frame.minY + 0.72500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43167 * frame.width, y: frame.minY + 0.65833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39167 * frame.width, y: frame.minY + 0.57833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46500 * frame.width, y: frame.minY + 0.53833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.66833 * frame.width, y: frame.minY + 0.59167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.93167 * frame.width, y: frame.minY + 0.55500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.98500 * frame.width, y: frame.minY + 0.52833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.89167 * frame.width, y: frame.minY + 0.44500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.73500 * frame.width, y: frame.minY + 0.37500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54500 * frame.width, y: frame.minY + 0.36167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51500 * frame.width, y: frame.minY + 0.36167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47167 * frame.width, y: frame.minY + 0.23500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.35833 * frame.width, y: frame.minY + 0.24500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.73500 * frame.width, y: frame.minY + 0.13833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.65500 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.27833 * frame.width, y: frame.minY + 0.02500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22833 * frame.width, y: frame.minY + 0.19167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.15833 * frame.width, y: frame.minY + 0.24500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.14500 * frame.width, y: frame.minY + 0.37500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.18167 * frame.width, y: frame.minY + 0.48167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22833 * frame.width, y: frame.minY + 0.53833 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeClassySpyPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.25333 * frame.width, y: frame.minY + 0.52667 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.23333 * frame.width, y: frame.minY + 0.65000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.25333 * frame.width, y: frame.minY + 0.75333 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36000 * frame.width, y: frame.minY + 0.91000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.55000 * frame.width, y: frame.minY + 1.00000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.45667 * frame.width, y: frame.minY + 0.77000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41333 * frame.width, y: frame.minY + 0.57333 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46667 * frame.width, y: frame.minY + 0.54667 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.63333 * frame.width, y: frame.minY + 0.63000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.82667 * frame.width, y: frame.minY + 0.67333 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.98000 * frame.width, y: frame.minY + 0.67333 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.89667 * frame.width, y: frame.minY + 0.56333 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71000 * frame.width, y: frame.minY + 0.43000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.53000 * frame.width, y: frame.minY + 0.37000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.50667 * frame.width, y: frame.minY + 0.21333 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.65333 * frame.width, y: frame.minY + 0.11000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.67333 * frame.width, y: frame.minY + 0.04000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43667 * frame.width, y: frame.minY + 0.02000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22333 * frame.width, y: frame.minY + 0.04000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.20667 * frame.width, y: frame.minY + 0.16000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.14333 * frame.width, y: frame.minY + 0.19000 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.14333 * frame.width, y: frame.minY + 0.40333 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.25333 * frame.width, y: frame.minY + 0.52667 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeCoachPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.28500 * frame.width, y: frame.minY + 0.30167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.17500 * frame.width, y: frame.minY + 0.72500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.24500 * frame.width, y: frame.minY + 0.98833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36167 * frame.width, y: frame.minY + 0.78167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39167 * frame.width, y: frame.minY + 0.58167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46833 * frame.width, y: frame.minY + 0.58167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46833 * frame.width, y: frame.minY + 0.78167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54833 * frame.width, y: frame.minY + 0.98833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.65833 * frame.width, y: frame.minY + 0.75833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62833 * frame.width, y: frame.minY + 0.46500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.60833 * frame.width, y: frame.minY + 0.31500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.52500 * frame.width, y: frame.minY + 0.28167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.56167 * frame.width, y: frame.minY + 0.21167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.81833 * frame.width, y: frame.minY + 0.13500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.75833 * frame.width, y: frame.minY + 0.06167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.38167 * frame.width, y: frame.minY + 0.04167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.28500 * frame.width, y: frame.minY + 0.30167 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeConfusedDressedPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.50167 * frame.width, y: frame.minY + 0.03167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39500 * frame.width, y: frame.minY + 0.09167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39500 * frame.width, y: frame.minY + 0.12500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.45833 * frame.width, y: frame.minY + 0.22167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.34500 * frame.width, y: frame.minY + 0.26167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.34500 * frame.width, y: frame.minY + 0.40833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.09167 * frame.width, y: frame.minY + 0.64167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.00167 * frame.width, y: frame.minY + 0.82167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.28500 * frame.width, y: frame.minY + 0.73167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47833 * frame.width, y: frame.minY + 0.53833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54500 * frame.width, y: frame.minY + 0.53833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.49167 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.67167 * frame.width, y: frame.minY + 0.80500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71833 * frame.width, y: frame.minY + 0.60167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.69167 * frame.width, y: frame.minY + 0.40833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.70167 * frame.width, y: frame.minY + 0.24167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.96500 * frame.width, y: frame.minY + 0.17167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.90167 * frame.width, y: frame.minY + 0.06833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.50167 * frame.width, y: frame.minY + 0.03167 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeConfusedPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.51833 * frame.width, y: frame.minY + 0.02833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41167 * frame.width, y: frame.minY + 0.08833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41167 * frame.width, y: frame.minY + 0.12167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47500 * frame.width, y: frame.minY + 0.21833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36167 * frame.width, y: frame.minY + 0.25833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36167 * frame.width, y: frame.minY + 0.40500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.10833 * frame.width, y: frame.minY + 0.63833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.01833 * frame.width, y: frame.minY + 0.81833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.30167 * frame.width, y: frame.minY + 0.72833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.49500 * frame.width, y: frame.minY + 0.53500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.56167 * frame.width, y: frame.minY + 0.53500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.50833 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68833 * frame.width, y: frame.minY + 0.80167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.73500 * frame.width, y: frame.minY + 0.59833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.70833 * frame.width, y: frame.minY + 0.40500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71833 * frame.width, y: frame.minY + 0.23833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.98167 * frame.width, y: frame.minY + 0.16833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.91833 * frame.width, y: frame.minY + 0.06500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51833 * frame.width, y: frame.minY + 0.02833 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeExhaustedPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.26500 * frame.width, y: frame.minY + 0.05167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.24167 * frame.width, y: frame.minY + 0.43500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.09167 * frame.width, y: frame.minY + 0.67167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.05500 * frame.width, y: frame.minY + 0.96167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.33833 * frame.width, y: frame.minY + 0.61833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.44833 * frame.width, y: frame.minY + 0.74833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.53500 * frame.width, y: frame.minY + 0.61833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.72833 * frame.width, y: frame.minY + 0.90167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.87167 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.84500 * frame.width, y: frame.minY + 0.74833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62167 * frame.width, y: frame.minY + 0.39167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62167 * frame.width, y: frame.minY + 0.26167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.94500 * frame.width, y: frame.minY + 0.16833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.87167 * frame.width, y: frame.minY + 0.05167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.26500 * frame.width, y: frame.minY + 0.05167 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeGraduatingPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.78167 * frame.width, y: frame.minY + 0.18500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62500 * frame.width, y: frame.minY + 0.03167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.15167 * frame.width, y: frame.minY + 0.03167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.25500 * frame.width, y: frame.minY + 0.18500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.07833 * frame.width, y: frame.minY + 0.32833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.25500 * frame.width, y: frame.minY + 0.53500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.25500 * frame.width, y: frame.minY + 0.73167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43833 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47500 * frame.width, y: frame.minY + 0.89833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43833 * frame.width, y: frame.minY + 0.69167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62500 * frame.width, y: frame.minY + 0.60500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.95833 * frame.width, y: frame.minY + 0.60500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.93833 * frame.width, y: frame.minY + 0.53500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.57833 * frame.width, y: frame.minY + 0.38167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54167 * frame.width, y: frame.minY + 0.26500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.78167 * frame.width, y: frame.minY + 0.18500 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeJumpsHappyDressedPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.59167 * frame.width, y: frame.minY + 0.15500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.63500 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22500 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.11833 * frame.width, y: frame.minY + 0.34833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.20833 * frame.width, y: frame.minY + 0.53167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22500 * frame.width, y: frame.minY + 0.73833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.35833 * frame.width, y: frame.minY + 0.93167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47833 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43500 * frame.width, y: frame.minY + 0.72833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.37167 * frame.width, y: frame.minY + 0.56167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.43500 * frame.width, y: frame.minY + 0.52167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.65833 * frame.width, y: frame.minY + 0.65500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.93500 * frame.width, y: frame.minY + 0.67500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.82833 * frame.width, y: frame.minY + 0.52167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.65833 * frame.width, y: frame.minY + 0.41500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.47833 * frame.width, y: frame.minY + 0.36500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.48833 * frame.width, y: frame.minY + 0.19833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.59167 * frame.width, y: frame.minY + 0.15500 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeJumpsHappyPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.55833 * frame.width, y: frame.minY + 0.15167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.60167 * frame.width, y: frame.minY + 0.04167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.19167 * frame.width, y: frame.minY + 0.04167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.08500 * frame.width, y: frame.minY + 0.34500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.17500 * frame.width, y: frame.minY + 0.52833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.19167 * frame.width, y: frame.minY + 0.73500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.32500 * frame.width, y: frame.minY + 0.92833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.44500 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.40167 * frame.width, y: frame.minY + 0.72500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.33833 * frame.width, y: frame.minY + 0.55833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.40167 * frame.width, y: frame.minY + 0.51833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62500 * frame.width, y: frame.minY + 0.65167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.90167 * frame.width, y: frame.minY + 0.67167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.79500 * frame.width, y: frame.minY + 0.51833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62500 * frame.width, y: frame.minY + 0.41167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.44500 * frame.width, y: frame.minY + 0.36167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.45500 * frame.width, y: frame.minY + 0.19500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.55833 * frame.width, y: frame.minY + 0.15167 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makePartyHornDressedPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.64500 * frame.width, y: frame.minY + 0.15500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68833 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.27833 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.17167 * frame.width, y: frame.minY + 0.34833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 3.5, y: frame.maxY - 175.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 10.5, y: frame.maxY - 152.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 39.5, y: frame.maxY - 152.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 51.5, y: frame.maxY - 175.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.26167 * frame.width, y: frame.minY + 0.53167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.27833 * frame.width, y: frame.minY + 0.73833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41167 * frame.width, y: frame.minY + 0.93167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.53167 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.48833 * frame.width, y: frame.minY + 0.72833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.42500 * frame.width, y: frame.minY + 0.56167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.48833 * frame.width, y: frame.minY + 0.52167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71167 * frame.width, y: frame.minY + 0.65500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.98833 * frame.width, y: frame.minY + 0.67500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.88167 * frame.width, y: frame.minY + 0.52167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71167 * frame.width, y: frame.minY + 0.41500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.53167 * frame.width, y: frame.minY + 0.36500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54167 * frame.width, y: frame.minY + 0.19833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64500 * frame.width, y: frame.minY + 0.15500 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makePartyHornPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.64500 * frame.width, y: frame.minY + 0.15500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68833 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.27833 * frame.width, y: frame.minY + 0.04500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.17167 * frame.width, y: frame.minY + 0.34833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 3.5, y: frame.maxY - 175.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 10.5, y: frame.maxY - 152.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 39.5, y: frame.maxY - 152.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 51.5, y: frame.maxY - 175.5))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.26167 * frame.width, y: frame.minY + 0.53167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.27833 * frame.width, y: frame.minY + 0.73833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41167 * frame.width, y: frame.minY + 0.93167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.53167 * frame.width, y: frame.minY + 0.99833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.48833 * frame.width, y: frame.minY + 0.72833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.42500 * frame.width, y: frame.minY + 0.56167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.48833 * frame.width, y: frame.minY + 0.52167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71167 * frame.width, y: frame.minY + 0.65500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.98833 * frame.width, y: frame.minY + 0.67500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.88167 * frame.width, y: frame.minY + 0.52167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71167 * frame.width, y: frame.minY + 0.41500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.53167 * frame.width, y: frame.minY + 0.36500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54167 * frame.width, y: frame.minY + 0.19833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64500 * frame.width, y: frame.minY + 0.15500 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makePrehistoricPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.93833 * frame.width, y: frame.minY + 0.13167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.85833 * frame.width, y: frame.minY + 0.05167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41833 * frame.width, y: frame.minY + 0.05167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.15167 * frame.width, y: frame.minY + 0.49500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.15167 * frame.width, y: frame.minY + 0.67167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.06167 * frame.width, y: frame.minY + 0.85167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.29500 * frame.width, y: frame.minY + 0.76833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46500 * frame.width, y: frame.minY + 0.59167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.54500 * frame.width, y: frame.minY + 0.59167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46500 * frame.width, y: frame.minY + 0.85167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46500 * frame.width, y: frame.minY + 0.99167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62833 * frame.width, y: frame.minY + 0.85167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71500 * frame.width, y: frame.minY + 0.63500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68167 * frame.width, y: frame.minY + 0.46833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.69500 * frame.width, y: frame.minY + 0.33167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.65833 * frame.width, y: frame.minY + 0.24833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.93833 * frame.width, y: frame.minY + 0.13167 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeRegularPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.86500 * frame.width, y: frame.minY + 0.20167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.75500 * frame.width, y: frame.minY + 0.07833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.24500 * frame.width, y: frame.minY + 0.03500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.24500 * frame.width, y: frame.minY + 0.23500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.10500 * frame.width, y: frame.minY + 0.30500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.18167 * frame.width, y: frame.minY + 0.70500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.38500 * frame.width, y: frame.minY + 0.93833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64500 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64500 * frame.width, y: frame.minY + 0.93833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51833 * frame.width, y: frame.minY + 0.70500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.96833 * frame.width, y: frame.minY + 0.85833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.96833 * frame.width, y: frame.minY + 0.78167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.72167 * frame.width, y: frame.minY + 0.51833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.51833 * frame.width, y: frame.minY + 0.43833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.55500 * frame.width, y: frame.minY + 0.30500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.86500 * frame.width, y: frame.minY + 0.20167 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeSuperfoxPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.64167 * frame.width, y: frame.minY + 0.04833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.20167 * frame.width, y: frame.minY + 0.03167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.07500 * frame.width, y: frame.minY + 0.26167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.10833 * frame.width, y: frame.minY + 0.44167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.20167 * frame.width, y: frame.minY + 0.55167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22167 * frame.width, y: frame.minY + 0.72833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.28500 * frame.width, y: frame.minY + 0.82167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.41167 * frame.width, y: frame.minY + 0.93500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64167 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.38167 * frame.width, y: frame.minY + 0.58833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.42833 * frame.width, y: frame.minY + 0.56167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.68833 * frame.width, y: frame.minY + 0.71833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.98500 * frame.width, y: frame.minY + 0.76167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.89833 * frame.width, y: frame.minY + 0.62167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.72833 * frame.width, y: frame.minY + 0.47167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.60833 * frame.width, y: frame.minY + 0.41167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.48500 * frame.width, y: frame.minY + 0.38500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46833 * frame.width, y: frame.minY + 0.24500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.67833 * frame.width, y: frame.minY + 0.27167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.71833 * frame.width, y: frame.minY + 0.24500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.72833 * frame.width, y: frame.minY + 0.17500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.57833 * frame.width, y: frame.minY + 0.16500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64167 * frame.width, y: frame.minY + 0.04833 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeThumbUpDressedPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.77833 * frame.width, y: frame.minY + 0.11500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.70833 * frame.width, y: frame.minY + 0.03500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36500 * frame.width, y: frame.minY + 0.03500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.34833 * frame.width, y: frame.minY + 0.11500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36500 * frame.width, y: frame.minY + 0.17167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.30167 * frame.width, y: frame.minY + 0.19167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.28167 * frame.width, y: frame.minY + 0.31833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.33167 * frame.width, y: frame.minY + 0.47167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22167 * frame.width, y: frame.minY + 0.63833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.20167 * frame.width, y: frame.minY + 0.88500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.25167 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46500 * frame.width, y: frame.minY + 0.55500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.55833 * frame.width, y: frame.minY + 0.55500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.58833 * frame.width, y: frame.minY + 0.74167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.67167 * frame.width, y: frame.minY + 0.88500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.76167 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.80167 * frame.width, y: frame.minY + 0.88500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.77833 * frame.width, y: frame.minY + 0.67167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.74167 * frame.width, y: frame.minY + 0.53500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64833 * frame.width, y: frame.minY + 0.36167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.60500 * frame.width, y: frame.minY + 0.19167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.77833 * frame.width, y: frame.minY + 0.11500 * frame.height))
        bezierPath.close()

        return bezierPath
    }

    private func makeThumbUpPath(frame: CGRect) -> UIBezierPath {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 0.77833 * frame.width, y: frame.minY + 0.11500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.70833 * frame.width, y: frame.minY + 0.03500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36500 * frame.width, y: frame.minY + 0.03500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.34833 * frame.width, y: frame.minY + 0.11500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.36500 * frame.width, y: frame.minY + 0.17167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.30167 * frame.width, y: frame.minY + 0.19167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.28167 * frame.width, y: frame.minY + 0.31833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.33167 * frame.width, y: frame.minY + 0.47167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.22167 * frame.width, y: frame.minY + 0.63833 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.20167 * frame.width, y: frame.minY + 0.88500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.25167 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.46500 * frame.width, y: frame.minY + 0.55500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.55833 * frame.width, y: frame.minY + 0.55500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.58833 * frame.width, y: frame.minY + 0.74167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.67167 * frame.width, y: frame.minY + 0.88500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.76167 * frame.width, y: frame.minY + 0.99500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.80167 * frame.width, y: frame.minY + 0.88500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.77833 * frame.width, y: frame.minY + 0.67167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.74167 * frame.width, y: frame.minY + 0.53500 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.64833 * frame.width, y: frame.minY + 0.36167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.60500 * frame.width, y: frame.minY + 0.19167 * frame.height))
        bezierPath.addLine(to: CGPoint(x: frame.minX + 0.77833 * frame.width, y: frame.minY + 0.11500 * frame.height))
        bezierPath.close()

        return bezierPath
    }
}
